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
using System.Windows.Shapes;

namespace LibraryManagement.UserControlLibrary
{
    /// <summary>
    /// Interaction logic for AddPhieuMuonWindow.xaml
    /// </summary>
    public partial class AddPhieuMuonWindow : Window
    {
        private AddPhieuMuonViewModel Viewmodel { get; set; }

        public AddPhieuMuonWindow()
        {
            InitializeComponent();

            this.DataContext = Viewmodel = new AddPhieuMuonViewModel();
        }
    }
}
