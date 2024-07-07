using LibraryManagement.Model;
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
    public class SachViewModel : BaseViewModel
    {
        private ObservableCollection<SACH> _List;
        public ObservableCollection<SACH> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<LOAISACH> _LOAISACHList;
        public ObservableCollection<LOAISACH> LOAISACHList { get => _LOAISACHList; set { _LOAISACHList = value; OnPropertyChanged(); } }

        private SACH _SelectedItem;
        public SACH SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();

                if (SelectedItem != null)
                {
                    MaSach = SelectedItem.MaSach;
                    TenSach = SelectedItem.TenSach;
                    TacGia = SelectedItem.TacGia;
                    NamXB = SelectedItem.NamXB.ToString();
                    NhaXB = SelectedItem.NhaXB;
                    NgayNhap = SelectedItem.NgayNhap;
                    TinhTrang = SelectedItem.TinhTrang;
                    SelectedLOAISACH = SelectedItem.LOAISACH;
                }
            }
        }

        private LOAISACH _SelectedLOAISACH;
        public LOAISACH SelectedLOAISACH { get => _SelectedLOAISACH; set { _SelectedLOAISACH = value; OnPropertyChanged(); } }

        private int _MaSach;
        public int MaSach { get => _MaSach; set { _MaSach = value; OnPropertyChanged(); } }

        private string _TenSach;
        public string TenSach { get => _TenSach; set { _TenSach = value; OnPropertyChanged(); } }

        private string _TacGia;
        public string TacGia { get => _TacGia; set { _TacGia = value; OnPropertyChanged(); } }

        private string _NamXB;
        public string NamXB { get => _NamXB; set { _NamXB = value; OnPropertyChanged(); } }

        private string _NhaXB;
        public string NhaXB { get => _NhaXB; set { _NhaXB = value; OnPropertyChanged(); } }

        private DateTime _NgayNhap;
        public DateTime NgayNhap { get => _NgayNhap; set { _NgayNhap = value; OnPropertyChanged(); } }

        private string _TinhTrang;
        public string TinhTrang { get => _TinhTrang; set { _TinhTrang = value; OnPropertyChanged(); } }

        private string _SearchName;
        public string SearchName { get => _SearchName; set { _SearchName = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand SearchCommand { get; set; }
        public ICommand ViewListCommand { get; set; }

        public SachViewModel()
        {
            List = new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes.Where(x => x.Xoa == 0));
            LOAISACHList = new ObservableCollection<LOAISACH>(DataProvider.Ins.DB.LOAISACHes.Where(x => x.Xoa == 0));

            AddCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(TenSach) || string.IsNullOrEmpty(NgayNhap.ToString())
                   || string.IsNullOrEmpty(TacGia) || string.IsNullOrEmpty(NamXB.ToString())
                   || string.IsNullOrEmpty(NhaXB) || SelectedLOAISACH == null)
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                try
                {
                    var qdNamXB = DataProvider.Ins.DB.QUYDINHs.Where(x => x.TenQD == "Thời hạn năm sản xuất tối đa").SingleOrDefault();
                    DateTime now = DateTime.Now;
                    int namXB = int.Parse(NamXB);

                    if (now.Year - namXB > int.Parse(qdNamXB.GiaTri) || now.Year - namXB < 0)
                    {
                        MessageBox.Show("Chỉ nhận sách trong thời gian từ " + qdNamXB.GiaTri + " năm trước trở lại!");
                        return;
                    }

                    if (now.Year - namXB < 0)
                    {
                        MessageBox.Show("Năm xuất bản không hợp lệ!");
                        return;
                    }

                    var s = new SACH()
                    {
                        TenSach = TenSach,
                        TacGia = TacGia,
                        NamXB = namXB,
                        NhaXB = NhaXB,
                        NgayNhap = now,
                        TinhTrang = "Chưa mượn",
                        MaLS = SelectedLOAISACH.MaLS,
                        Xoa = 0
                    };

                    DataProvider.Ins.DB.SACHes.Add(s);
                    DataProvider.Ins.DB.SaveChanges();

                    List.Add(s);
                }
                catch
                {
                    MessageBox.Show("Năm xuất bản không hợp lệ!");
                    return;
                }
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                {
                    return false;
                }

                if (string.IsNullOrEmpty(TenSach) || string.IsNullOrEmpty(NgayNhap.ToString())
                   || string.IsNullOrEmpty(TacGia) || string.IsNullOrEmpty(NamXB.ToString())
                   || string.IsNullOrEmpty(NhaXB) || SelectedLOAISACH == null)
                {
                    return false;
                }

                int namXB = int.Parse(NamXB);
                var sList = DataProvider.Ins.DB.SACHes.Where(x => x.MaSach==MaSach&&
                x.TenSach == TenSach && x.TacGia == TacGia && x.NamXB == namXB && x.NhaXB == NhaXB && x.MaLS == SelectedLOAISACH.MaLS);

                if (sList == null || sList.Count() != 0)
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                try
                {
                    var qdNamXB = DataProvider.Ins.DB.QUYDINHs.Where(x => x.TenQD == "Thời hạn năm sản xuất tối đa").SingleOrDefault();
                    DateTime now = DateTime.Now;
                    int namXB = int.Parse(NamXB);

                    if (now.Year - namXB > int.Parse(qdNamXB.GiaTri) || now.Year - namXB < 0)
                    {
                        MessageBox.Show("Năm xuất bản chỉ từ " + qdNamXB.GiaTri + " năm trước trở lại!");
                        return;
                    }

                    if (now.Year - namXB < 0)
                    {
                        MessageBox.Show("Năm xuất bản không hợp lệ!");
                        return;
                    }

                    MessageBoxResult rs = MessageBox.Show("Bạn có chắc chắn muốn cập nhật thông tin cuốn sách này?",
                    "Thông báo", MessageBoxButton.OKCancel);

                    if (rs == MessageBoxResult.OK)
                    {
                        var s = DataProvider.Ins.DB.SACHes.Where(x => x.MaSach == SelectedItem.MaSach).SingleOrDefault();

                        s.TenSach = TenSach;
                        s.TacGia = TacGia;
                        s.NamXB = namXB;
                        s.NhaXB = NhaXB;
                        s.MaLS = SelectedLOAISACH.MaLS;

                        DataProvider.Ins.DB.SaveChanges();

                        SelectedItem.TenSach = TenSach;
                        SelectedItem.TacGia = TacGia;
                        SelectedItem.NamXB = namXB;
                        SelectedItem.NhaXB = NhaXB;
                        SelectedItem.LOAISACH = SelectedLOAISACH;
                    }
                }
                catch
                {
                    MessageBox.Show("Năm xuất bản không hợp lệ!");
                    return;
                }
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                {
                    return false;
                }

                if (string.IsNullOrEmpty(TenSach) || string.IsNullOrEmpty(NgayNhap.ToString())
                   || string.IsNullOrEmpty(TacGia) || string.IsNullOrEmpty(NamXB.ToString())
                   || string.IsNullOrEmpty(NhaXB) || SelectedLOAISACH == null)
                {
                    return false;
                }

                int namXB = int.Parse(NamXB);
                var sList = DataProvider.Ins.DB.SACHes.Where(x => x.MaSach == MaSach &&
                x.TenSach == TenSach && x.TacGia == TacGia && x.NamXB == namXB && x.NhaXB == NhaXB && x.MaLS == SelectedLOAISACH.MaLS);

                if (sList == null || sList.Count() == 0)
                {
                    return false;
                }
                
                return true;
            }, (p) =>
            {
                MessageBoxResult rs = MessageBox.Show("Tất cả các chi tiết phiếu mượn/ phiếu mượn sách này sẽ bị xóa.\nBạn có chắc chắn muốn xóa sách này?", "Lưu ý", MessageBoxButton.OKCancel);

                if (rs == MessageBoxResult.OK)
                {
                    var sach = DataProvider.Ins.DB.SACHes.Where(x => x.MaSach == SelectedItem.MaSach).SingleOrDefault();
                    var ctpms= DataProvider.Ins.DB.CHITIETPHIEUMUONs.Where(x => x.MaSach == sach.MaSach && x.Xoa == 0).ToList();

                    foreach (CHITIETPHIEUMUON ctpm in ctpms)
                    {
                        ctpm.Xoa = 1;
                        DataProvider.Ins.DB.SaveChanges();

                        var countctpm = DataProvider.Ins.DB.CHITIETPHIEUMUONs.Where(x => x.MaPM == ctpm.MaPM && x.Xoa == 0);

                        //Nếu phiếu mượn chỉ gồm chi tiết phiếu mượn này thì xóa phiếu mượn luôn
                        if (countctpm == null || countctpm.Count() == 0)
                        {
                            var pm = DataProvider.Ins.DB.PHIEUMUONs.Where(x => x.MaPM == ctpm.MaPM).SingleOrDefault();
                            pm.Xoa = 1;

                            DataProvider.Ins.DB.SaveChanges();
                        }
                    }

                    sach.Xoa = 1;

                    DataProvider.Ins.DB.SaveChanges();

                    List.Remove(sach);
                }
            });

            SearchCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(SearchName))
                {
                    return false;
                }
                
                return true;
            }, (p) =>
            {
                List = new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes.Where(x => x.TenSach.Contains(SearchName)));
            });

            ViewListCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                List = new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes.Where(x => x.Xoa == 0));
            });
        }
    }
}
