   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5      5    /LibraryManagement.UserControlLibrary.NhanVienUC   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Dlocal2clr-namespace:LibraryManagement.UserControlLibrary     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5        $��
ucNhanVien��5
         MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   #  MaterialDesignThemes.Wpf.Card  $��0��6   $��5q�6+   .��5      � $��0 0 0 10q�6   .+�5      �� $��5 5 15 5q�6b   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên nhân viên��6t    % !MaterialDesignFloatingHintTextBox#��[ 6�   $
��auto��6�   ��6   �� *TenNV+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�6�   (  "System.Windows.Controls.DatePicker  5      $��Center=�6   $	��100��6�   $��
5 5 15 3.9q�6�   $ Ngày sinh��6�    ( $MaterialDesignFloatingHintDatePicker#��[ 6�      SelectedDate 68   �� *
NgaySinh+$ TwoWay=�$ PropertyChanged=�6�   �� 5       $��5 5 15 5q�6c   $ Địa chỉ��6u   #��[ 6�   ��6   �� *DiaChi+$ PropertyChanged=�$ TwoWay=�6�   �� 5!      $��5 5 15 5q�6b   $ Email��6t   #��[ 6�   ��6   �� *Email+$ PropertyChanged=�$ TwoWay=�6�   �� 5"      $��5 5 15 5q�6h   $ Tên đăng nhập��6z   #��[ 6�   ��6   �� *TenDangNhap+$ PropertyChanged=�$ TwoWay=�6�   �� 5#      $��5 5 15 5q�6    �� DisplayMemberPath$ TenLNV��6-   $ Loại nhân viên��6�    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 6  ��6H   �� *
LOAINVList+	 �� SelectedItem	 6k   �� *SelectedLOAINV+$ TwoWay=�$ PropertyChanged=�6E  5$      5%        5'   
   $��1��6   $��5q�6+   .��5(      � .+�5)      �� $��Thêm��6l   $��5q�6{   $	��100��6�   ��6   �� *
AddCommand+��68   �� 
 �� ElementName$
 
ucNhanVien��6�   �� 5*      $��Sửa��6m   $��5q�6|   $	��100��6�   ��6   �� *EditCommand+��69   �� $
 
ucNhanVien��6�   �� 5+      $��Xóa��6o   $��5q�6~   $	��100��6�   ��6   �� *DeleteCommand+��6;   �� $
 
ucNhanVien��6�   �� 5,      $��Reset mật khẩu��6v   $��5q�6�   $	��150��6�   ��6   �� *ResetPasswordCommand+��6B   �� $
 
ucNhanVien��6�   5-      5.        50   
   $��2��6   $��5q�6+   $��Stretch=�66   $��Stretch=�6R   .��51      �� $
��Auto=�6   .��52      �� $
��auto��6s   ��6   �� *List+	 68   �� *SelectedItem+$ OneWayToSource=� �� View 53      �� 54      .P�55      �� $��Mã nhân viên��6-    �� Width$
 auto��6i    �� DisplayMemberBinding 6C   �� *MaNV+6x   �� 56      $��Tên nhân viên��6-   $
 auto��6k    6D   �� *TenNV+6z   �� 57      $��
Ngày sinh��6-   $
 auto��6�    6@   �� *
NgaySinh+ �� StringFormat$ 
dd/MM/yyyy��6�   �� 58      $��Địa chỉ��6-   $
 auto��6f    6>   �� *DiaChi+6u   �� 59      $��Email��6-   $
 auto��6c    6<   �� *Email+6r   �� 5:      $��Tên đăng nhập��6-   $
 auto��6q    6D   �� *TenDangNhap+6�   �� 5;      $��Loại nhân viên��6-   $
 auto��6t    6E   �� *LOAINV.TenLNV+6�   5<      5>      5?      5@      5A      5B      