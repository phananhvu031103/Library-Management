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
    public class AddPhieuMuonViewModel:BaseViewModel
    {
        private ObservableCollection<THEDOCGIA> _THEDOCGIAList;
        public ObservableCollection<THEDOCGIA> THEDOCGIAList { get => _THEDOCGIAList; set { _THEDOCGIAList = value; OnPropertyChanged(); } }

        private ObservableCollection<SACH> _SACHList;
        public ObservableCollection<SACH> SACHList { get => _SACHList; set { _SACHList = value; OnPropertyChanged(); } }

        private ObservableCollection<SACH> _CTPMList;
        public ObservableCollection<SACH> CTPMList { get => _CTPMList; set { _CTPMList = value; OnPropertyChanged(); } }

        private THEDOCGIA _SelectedTHEDOCGIA;
        public THEDOCGIA SelectedTHEDOCGIA
        {
            get => _SelectedTHEDOCGIA;
            set
            {
                _SelectedTHEDOCGIA = value;
                OnPropertyChanged();

                if (SelectedTHEDOCGIA != null)
                {
                    MaDG = SelectedTHEDOCGIA.MaDG;
                    HoTen = SelectedTHEDOCGIA.HoTen;
                }
            }
        }

        private SACH _SelectedSACH;
        public SACH SelectedSACH
        {
            get => _SelectedSACH;
            set
            {
                _SelectedSACH = value;
                OnPropertyChanged();
            }
        }

        private SACH _SelectedCTPM;
        public SACH SelectedCTPM
        {
            get => _SelectedCTPM;
            set
            {
                _SelectedCTPM = value;
                OnPropertyChanged();
            }
        }

        private int _MaDG;
        public int MaDG { get => _MaDG; set { _MaDG = value; OnPropertyChanged(); } }

        private string _HoTen;
        public string HoTen { get => _HoTen; set { _HoTen = value; OnPropertyChanged(); } }

        private DateTime _NgayMuon;
        public DateTime NgayMuon { get => _NgayMuon; set { _NgayMuon = value; OnPropertyChanged(); } }

        private string _SearchName;
        public string SearchName { get => _SearchName; set { _SearchName = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand CancelCommand { get; set; }
        public ICommand SearchCommand { get; set; }
        public ICommand ViewListCommand { get; set; }
        public ICommand PushCommand { get; set; }
        public ICommand PopCommand { get; set; }


        public AddPhieuMuonViewModel()
        {
            THEDOCGIAList = new ObservableCollection<THEDOCGIA>(DataProvider.Ins.DB.THEDOCGIAs.Where(x => x.Xoa == 0));
            SACHList = new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes.Where(x => x.Xoa == 0&&x.TinhTrang=="Chưa mượn"));
            CTPMList = new ObservableCollection<SACH>();

            NgayMuon = DateTime.Now;

            SearchCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(SearchName))
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                SACHList = new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes.Where(x => x.TenSach.Contains(SearchName)));
            });

            ViewListCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                SACHList = new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes.Where(x => x.Xoa == 0));
            });

            PushCommand = new RelayCommand<object>((p) =>
            {
               

                if (SelectedSACH == null)
                {
                    return false;
                }

                var ctpm= DataProvider.Ins.DB.SACHes.Where(x => x.MaSach == SelectedSACH.MaSach).SingleOrDefault();

                if(CTPMList.Contains(ctpm))
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                var qdSoSachMuonToiDa = DataProvider.Ins.DB.QUYDINHs.Where(x => x.TenQD == "Số ngày mượn tối đa").SingleOrDefault();
                int soSachMuonTD = int.Parse(qdSoSachMuonToiDa.GiaTri);

                if (CTPMList.Count() >= soSachMuonTD)
                {
                    MessageBox.Show("Bạn chỉ được mượn tối đa "+soSachMuonTD+" cuốn sách!", "Thông báo");
                    return;
                }

                var ctpm = DataProvider.Ins.DB.SACHes.Where(x => x.MaSach == SelectedSACH.MaSach).SingleOrDefault();

                CTPMList.Add(ctpm);
            });

            PopCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedCTPM == null)
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                var ctpm = DataProvider.Ins.DB.SACHes.Where(x => x.MaSach == SelectedCTPM.MaSach).SingleOrDefault();

                CTPMList.Remove(ctpm);
            });

            AddCommand = new RelayCommand<Window>((p) =>
            {
                if(SelectedTHEDOCGIA==null)
                {
                    return false;
                }

                if(CTPMList.Count()==0)
                {
                    return false;
                }

                return true;
            }, (p) =>
            {
                //Kiểm tra thời hạn thẻ
                var qdThoiHanThe = DataProvider.Ins.DB.QUYDINHs.Where(x => x.TenQD == "Thời hạn thẻ độc giả").SingleOrDefault();
                int thoiHanThe = int.Parse(qdThoiHanThe.GiaTri);
                DateTime now = DateTime.Now;

                //Tính khoảng thời gian từ ngày lập thẻ đến nay
                TimeSpan interval = now.Subtract(SelectedTHEDOCGIA.NgayLT);

                //Nếu quá ngày mượn tối đa
                if (interval.Days > thoiHanThe * 30)
                {
                    MessageBox.Show("Thẻ độc giả này đã hết hạn!", "Thông báo");

                    return;
                }

                //Kiểm tra độc giả đã trả sách chưa
                var pm = DataProvider.Ins.DB.PHIEUMUONs.Where(x => x.MaDG == SelectedTHEDOCGIA.MaDG && x.Xoa == 0 && x.NgayTra == null);

                if (pm.Count() > 0)
                {
                    MessageBox.Show("Độc giả này chưa trả sách!", "Thông báo");

                    return;
                }

                var addpm = new PHIEUMUON()
                {
                    MaDG = SelectedTHEDOCGIA.MaDG,
                    NgayMuon = NgayMuon,
                    NgayTra = null,
                  
                    Xoa = 0
                };

                DataProvider.Ins.DB.PHIEUMUONs.Add(addpm);
                DataProvider.Ins.DB.SaveChanges();

                int i = 1;

                foreach (SACH s in CTPMList)
                {
                    s.TinhTrang = "Đã mượn";
                    DataProvider.Ins.DB.SaveChanges();

                    CHITIETPHIEUMUON ctpm = new CHITIETPHIEUMUON()
                    {
                        MaPM = addpm.MaPM,
                        MaSach = s.MaSach,
                        STT = i,
                        Xoa = 0
                    };

                    DataProvider.Ins.DB.CHITIETPHIEUMUONs.Add(ctpm);
                    DataProvider.Ins.DB.SaveChanges();

                    i++;
                }

                p.Close();
            });

            CancelCommand = new RelayCommand<Window>((p) =>
            {
                return true;
            }, (p) =>
            {
                p.Close();
            });
        }
    }
}
