using LibraryManagement.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace LibraryManagement.ViewModel
{
    public class TheDocGiaViewModel : BaseViewModel
    {
        private ObservableCollection<THEDOCGIA> _List;
        public ObservableCollection<THEDOCGIA> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<LOAIDG> _LOAIDGList;
        public ObservableCollection<LOAIDG> LOAIDGList { get => _LOAIDGList; set { _LOAIDGList = value; OnPropertyChanged(); } }

        private THEDOCGIA _SelectedItem;
        public THEDOCGIA SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();

                if (SelectedItem != null)
                {
                    MaDG = SelectedItem.MaDG;
                    HoTen = SelectedItem.HoTen;
                    NgaySinh = SelectedItem.NgaySinh;
                    Diachi = SelectedItem.Diachi;
                    Email = SelectedItem.Email;
                    NgayLT = SelectedItem.NgayLT;
                    SelectedLOAIDG = SelectedItem.LOAIDG;
                }
            }
        }

        private LOAIDG _SelectedLOAIDG;
        public LOAIDG SelectedLOAIDG { get => _SelectedLOAIDG; set { _SelectedLOAIDG = value; OnPropertyChanged(); } }

        private int _MaDG;
        public int MaDG { get => _MaDG; set { _MaDG = value; OnPropertyChanged(); } }

        private string _HoTen;
        public string HoTen { get => _HoTen; set { _HoTen = value; OnPropertyChanged(); } }

        private DateTime _NgaySinh;
        public DateTime NgaySinh { get => _NgaySinh; set { _NgaySinh = value; OnPropertyChanged(); } }

        private string _Diachi;
        public string Diachi { get => _Diachi; set { _Diachi = value; OnPropertyChanged(); } }

        private string _Email;
        public string Email { get => _Email; set { _Email = value; OnPropertyChanged(); } }

        private DateTime _NgayLT;
        public DateTime NgayLT { get => _NgayLT; set { _NgayLT = value; OnPropertyChanged(); } }

        private string _TenLDG;
        public string TenLDG { get => _TenLDG; set { _TenLDG = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public TheDocGiaViewModel()
        {
            List = new ObservableCollection<THEDOCGIA>(DataProvider.Ins.DB.THEDOCGIAs.Where(x=>x.Xoa==0));
            LOAIDGList = new ObservableCollection<LOAIDG>(DataProvider.Ins.DB.LOAIDGs.Where(x => x.Xoa == 0));

            AddCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(HoTen) || string.IsNullOrEmpty(NgaySinh.ToString())
                   || string.IsNullOrEmpty(Diachi) || string.IsNullOrEmpty(Email)
                   || string.IsNullOrEmpty(NgayLT.ToString()) || SelectedLOAIDG == null)
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                var email = DataProvider.Ins.DB.THEDOCGIAs.Where(x => x.Email == Email && x.Xoa == 0);

                if (email.Count() != 0)
                {
                    MessageBox.Show("Email này đã tồn tại!");

                    return;
                }

                var theDG = new THEDOCGIA() { HoTen = HoTen, NgaySinh = NgaySinh, Diachi = Diachi, Email = Email, NgayLT = NgayLT, MaLDG = SelectedLOAIDG.MaLDG,Xoa=0 };

                DataProvider.Ins.DB.THEDOCGIAs.Add(theDG);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(theDG);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                {
                    return false;
                }

                if (string.IsNullOrEmpty(HoTen) || string.IsNullOrEmpty(NgaySinh.ToString())
                   || string.IsNullOrEmpty(Diachi) || string.IsNullOrEmpty(Email)
                   || string.IsNullOrEmpty(NgayLT.ToString()) || SelectedLOAIDG == null)
                {
                    return false;
                }

                var tdgList = DataProvider.Ins.DB.THEDOCGIAs.Where(x =>x.MaDG==MaDG&& x.Email == Email && x.HoTen == HoTen && x.NgaySinh == NgaySinh && x.Diachi == Diachi && x.NgayLT == NgayLT && x.MaLDG == SelectedLOAIDG.MaLDG);

                if (tdgList == null || tdgList.Count() != 0)
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                var email = DataProvider.Ins.DB.THEDOCGIAs.Where(x =>x.MaDG!=MaDG&&x.Email == Email&&x.Xoa==0);

                if(email.Count()!=0)
                {
                    MessageBox.Show("Email này đã tồn tại!");
                    return;
                }

                MessageBoxResult rs = MessageBox.Show("Tất cả các phiếu mượn thuộc độc giả này sẽ cập nhật lại thông tin người mượn.\nBạn có chắc chắn muốn cập nhật thẻ độc giả này?",
                    "Lưu ý", MessageBoxButton.OKCancel);

                if (rs == MessageBoxResult.OK)
                {
                    var theDG = DataProvider.Ins.DB.THEDOCGIAs.Where(x => x.MaDG == SelectedItem.MaDG).SingleOrDefault();

                    theDG.HoTen = HoTen;
                    theDG.NgaySinh = NgaySinh;
                    theDG.Diachi = Diachi;
                    theDG.Email = Email;
                    theDG.NgayLT = NgayLT;
                    theDG.MaLDG = SelectedLOAIDG.MaLDG;

                    DataProvider.Ins.DB.SaveChanges();

                    SelectedItem.HoTen = HoTen;
                    SelectedItem.NgaySinh = NgaySinh;
                    SelectedItem.Diachi = Diachi;
                    SelectedItem.Email = Email;
                    SelectedItem.NgayLT = NgayLT;
                    SelectedItem.LOAIDG = SelectedLOAIDG;
                }
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                {
                    return false;
                }

                if (string.IsNullOrEmpty(HoTen) || string.IsNullOrEmpty(NgaySinh.ToString())
                   || string.IsNullOrEmpty(Diachi) || string.IsNullOrEmpty(Email)
                   || string.IsNullOrEmpty(NgayLT.ToString()) || SelectedLOAIDG == null)
                {
                    return false;
                }

                var tdgList = DataProvider.Ins.DB.THEDOCGIAs.Where(x =>x.MaDG==MaDG&& x.Email == Email && x.HoTen == HoTen && x.NgaySinh == NgaySinh && x.Diachi == Diachi && x.NgayLT == NgayLT && x.MaLDG == SelectedLOAIDG.MaLDG);

                if (tdgList == null || tdgList.Count() == 0)
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                MessageBoxResult rs = MessageBox.Show("Tất cả các phiếu mượn thuộc độc giả này sẽ bị xóa.\nBạn có chắc chắn muốn xóa thẻ độc giả này?",
                    "Lưu ý", MessageBoxButton.OKCancel);

                if (rs == MessageBoxResult.OK)
                {
                    var tdg= DataProvider.Ins.DB.THEDOCGIAs.Where(x => x.MaDG == SelectedItem.MaDG).SingleOrDefault();
                    var pms= DataProvider.Ins.DB.PHIEUMUONs.Where(x => x.MaDG == tdg.MaDG && x.Xoa == 0).ToList();

                    //Xóa các phiếu mượn thuộc thẻ độc giả này
                    foreach (PHIEUMUON pm in pms)
                    {
                        var ctpms = DataProvider.Ins.DB.CHITIETPHIEUMUONs.Where(x => x.MaPM == pm.MaPM && x.Xoa == 0).ToList();

                        //Xóa chi tiết phiếu mượn của phiếu mượn này
                        foreach (CHITIETPHIEUMUON ctpm in ctpms)
                        {
                            ctpm.Xoa = 1;
                            DataProvider.Ins.DB.SaveChanges();

                            //Xóa sách thuộc chi tiết phiếu mượn nếu nó chưa trả
                            if(pm.NgayTra==null)
                            {
                                var s = DataProvider.Ins.DB.SACHes.Where(x => x.MaSach == ctpm.MaSach).SingleOrDefault();

                                s.Xoa = 1;
                                DataProvider.Ins.DB.SaveChanges();
                            }
                        }

                        pm.Xoa = 1;
                        DataProvider.Ins.DB.SaveChanges();
                    }

                    //Xóa độc giả này
                    tdg.Xoa = 1;

                    DataProvider.Ins.DB.SaveChanges();

                    List.Remove(tdg);
                }
            });
        }
    }
}
