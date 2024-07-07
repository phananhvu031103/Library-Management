using LibraryManagement.Model;
using LibraryManagement.UserControlLibrary;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace LibraryManagement.ViewModel
{
    public class PhieuMuonViewModel : BaseViewModel
    {
        private ObservableCollection<PHIEUMUON> _List;
        public ObservableCollection<PHIEUMUON> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<CHITIETPHIEUMUON> _BookList;
        public ObservableCollection<CHITIETPHIEUMUON> BookList { get => _BookList; set { _BookList = value; OnPropertyChanged(); } }

        private PHIEUMUON _SelectedItem;
        public PHIEUMUON SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();

                if (SelectedItem != null)
                {
                    MaPM = SelectedItem.MaPM;
                    MaDG = SelectedItem.MaDG;
                    HoTen = SelectedItem.THEDOCGIA.HoTen;
                    NgayMuon = SelectedItem.NgayMuon;
                    NgayTra = SelectedItem.NgayTra;
                    TienPhat = SelectedItem.TienPhat;
                    BookList= new ObservableCollection<CHITIETPHIEUMUON>(DataProvider.Ins.DB.CHITIETPHIEUMUONs.Where(x =>x.MaPM==MaPM&& x.Xoa == 0));
                }
            }
        }

        private int _MaPM;
        public int MaPM { get => _MaPM; set { _MaPM = value; OnPropertyChanged(); } }

        private int _MaDG;
        public int MaDG { get => _MaDG; set { _MaDG = value; OnPropertyChanged(); } }

        private string _HoTen;
        public string HoTen { get => _HoTen; set { _HoTen = value; OnPropertyChanged(); } }

        private DateTime _NgayMuon;
        public DateTime NgayMuon { get => _NgayMuon; set { _NgayMuon = value; OnPropertyChanged(); } }

        private DateTime? _NgayTra;
        public DateTime? NgayTra { get => _NgayTra; set { _NgayTra = value; OnPropertyChanged(); } }

        private double _TienPhat;
        public double TienPhat { get => _TienPhat; set { _TienPhat = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand ConfirmCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public PhieuMuonViewModel()
        {
            //Load danh sách phiếu mượn
            List = new ObservableCollection<PHIEUMUON>(DataProvider.Ins.DB.PHIEUMUONs.Where(x => x.Xoa == 0));
            var qdSoNgayMuonToiDa = DataProvider.Ins.DB.QUYDINHs.Where(x=>x.TenQD=="Số ngày mượn tối đa").SingleOrDefault();
            int soNgayMuonTD = int.Parse(qdSoNgayMuonToiDa.GiaTri);
            DateTime now = DateTime.Now;

            foreach (PHIEUMUON pm in List)
            {
                //Nếu phiếu mượn chưa trả
                if(pm.NgayTra==null)
                {
                    //Tính khoảng thời gian từ ngày mượn đến nay
                    TimeSpan interval = now.Subtract(pm.NgayMuon);

                    //Nếu quá ngày mượn tối đa
                    if (interval.Days > soNgayMuonTD)
                    {
                        //Đếm số sách đã mượn
                        var ctpms = DataProvider.Ins.DB.CHITIETPHIEUMUONs.Where(x => x.MaPM == pm.MaPM && x.Xoa == 0).ToList();

                        //Tính tiền phạt
                        pm.TienPhat = 5000 * (interval.Days - soNgayMuonTD)*ctpms.Count();
                        DataProvider.Ins.DB.SaveChanges();
                    }
                }
            }

            ConfirmCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                {
                    return false;
                }

                if(SelectedItem.NgayTra!=null)
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                MessageBoxResult rs = MessageBox.Show("Bạn có chắc chăn xác nhận trả sách?",
                    "Xác nhận", MessageBoxButton.OKCancel);

                if (rs == MessageBoxResult.OK)
                {
                    var pm = DataProvider.Ins.DB.PHIEUMUONs.Where(x => x.MaPM == SelectedItem.MaPM).SingleOrDefault();

                    pm.NgayTra = DateTime.Now;
                    NgayTra = pm.NgayTra;

                    DataProvider.Ins.DB.SaveChanges();

                    var ctpms = DataProvider.Ins.DB.CHITIETPHIEUMUONs.Where(x => x.MaPM == SelectedItem.MaPM).ToList();

                    foreach(CHITIETPHIEUMUON ctpm in ctpms)
                    {
                        ctpm.SACH.TinhTrang = "Chưa mượn";
                        DataProvider.Ins.DB.SaveChanges();
                    }
                }
            });

            AddCommand = new RelayCommand<object>((p) => { return true; }, (p) => {
                AddPhieuMuonWindow wd = new AddPhieuMuonWindow();
                wd.ShowDialog();

                if(wd.IsActive==false)
                {
                    List = new ObservableCollection<PHIEUMUON>(DataProvider.Ins.DB.PHIEUMUONs.Where(x => x.Xoa == 0));
                }
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                MessageBoxResult rs = MessageBox.Show("Tất cả các sách thuộc phiếu mượn này sẽ bị xóa nếu chưa được trả.\nBạn có chắc chắn muốn xóa phiếu mượn này?",
                    "Lưu ý", MessageBoxButton.OKCancel);

                if (rs == MessageBoxResult.OK)
                {
                    var pm = DataProvider.Ins.DB.PHIEUMUONs.Where(x => x.MaPM == SelectedItem.MaPM && x.Xoa == 0).SingleOrDefault();
                    var ctpms = DataProvider.Ins.DB.CHITIETPHIEUMUONs.Where(x => x.MaPM == pm.MaPM && x.Xoa == 0).ToList();

                    //Xóa chi tiết phiếu mượn của phiếu mượn này
                    foreach (CHITIETPHIEUMUON ctpm in ctpms)
                    {
                        ctpm.Xoa = 1;
                        DataProvider.Ins.DB.SaveChanges();

                        //Xóa sách thuộc chi tiết phiếu mượn nếu nó chưa trả
                        if (pm.NgayTra == null)
                        {
                            var s = DataProvider.Ins.DB.SACHes.Where(x => x.MaSach == ctpm.MaSach).SingleOrDefault();

                            s.Xoa = 1;
                            DataProvider.Ins.DB.SaveChanges();
                        }
                    }

                    pm.Xoa = 1;
                    DataProvider.Ins.DB.SaveChanges();

                    List.Remove(pm);
                }
            });
        }
    }
}
