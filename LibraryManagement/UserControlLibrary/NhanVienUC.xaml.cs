﻿using LibraryManagement.Model;
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
    /// Interaction logic for NhanVienUC.xaml
    /// </summary>
    public partial class NhanVienUC : UserControl
    {
        private NhanVienViewModel Viewmodel { get; set; }
        
        public NhanVienUC()
        {
            InitializeComponent();
        }

        public NhanVienUC(NHANVIEN NhanVien)
        {
            InitializeComponent();
            this.DataContext = Viewmodel = new NhanVienViewModel(NhanVien);
        }
    }
}
