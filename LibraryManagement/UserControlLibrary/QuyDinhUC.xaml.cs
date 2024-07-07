using LibraryManagement.Model;
using LibraryManagement.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LibraryManagement.UserControlLibrary
{
    /// <summary>
    /// Interaction logic for QuyDinhUC.xaml
    /// </summary>
    public partial class QuyDinhUC : UserControl
    {
        private QuyDinhViewModel Viewmodel { get; set; }

        public QuyDinhUC()
        {
            InitializeComponent();
        }

        public QuyDinhUC(NHANVIEN NhanVien)
        {
            InitializeComponent();
            this.DataContext = Viewmodel = new QuyDinhViewModel(NhanVien);
        }
    }
}
