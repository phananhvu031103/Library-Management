   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5      6    0LibraryManagement.UserControlLibrary.TheDocGiaUC   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Dlocal2clr-namespace:LibraryManagement.UserControlLibrary     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
         MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   #  MaterialDesignThemes.Wpf.Card  $��0��6   $��5q�6+   .��5      � $��0 0 0 10q�6   .+�5      �� $��5 5 15 5q�6b   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên độc giả��6t    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *HoTen+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�6�   (  "System.Windows.Controls.DatePicker  5      $��Center=�6   $	��100��6�   $��
5 5 15 3.9q�6�   $ Ngày sinh��6�    ( $MaterialDesignFloatingHintDatePicker#��[ 6�      SelectedDate 68   �� *
NgaySinh+$ TwoWay=�$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6c   $ Địa chỉ��6u   #��[ 6�   ��6   �� *Diachi+$ PropertyChanged=�$ TwoWay=�6�   �� 5      $��5 5 15 5q�6b   $ Email��6t   #��[ 6�   ��6   �� *Email+$ PropertyChanged=�$ TwoWay=�6�     5       $��Center=�6   $	��100��6�   $��
5 5 15 3.9q�6�   $ Ngày lập thẻ��6�   #��[ 6�    68   �� *NgayLT+$ TwoWay=�$ PropertyChanged=�6�   �� 5!      $��5 5 15 5q�6    �� DisplayMemberPath$ TenLDG��6-   $ Loại độc giả��6�    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 6  ��6H   �� *
LOAIDGList+	 �� SelectedItem	 6k   �� *SelectedLOAIDG+$ TwoWay=�$ PropertyChanged=�6C  5"      5#        5%   
   $��1��6   $��5q�6+   .��5&      � .+�5'      �� $��Thêm��6m   $��5q�6|   $	��100��6�   ��6   �� *
AddCommand+��68   �� 
 �� ElementName$
 ucTheDocGia��6�   �� 5(      $��Sửa��6n   $��5q�6}   $	��100��6�   ��6   �� *EditCommand+��69   �� $
 ucTheDocGia��6�   �� 5)      $��Xóa��6p   $��5q�6   $	��100��6�   ��6   �� *DeleteCommand+��6;   �� $
 ucTheDocGia��6�   5*      5+        5-   
   $��2��6   $��5q�6+   $��Stretch=�66   $��Stretch=�6R   .��5.      �� $
��Auto=�6   .��5/      �� $
��auto��6s   ��6   �� *List+	 68   �� *SelectedItem+$ OneWayToSource=� �� View 50      �� 51      .P�52      �� $��Mã độc giả��6-    �� Width$
 auto��6g    �� DisplayMemberBinding 6A   �� *MaDG+6v   �� 53      $��Tên độc giả��6-   $
 auto��6i    6B   �� *HoTen+6x   �� 54      $��
Ngày sinh��6-   $
 auto��6�    6@   �� *
NgaySinh+ �� StringFormat$ 
dd//MM/yyy��6�   �� 55      $��Địa chỉ��6-   $
 auto��6f    6>   �� *Diachi+6u   �� 56      $��Email��6-   $
 auto��6c    6<   �� *Email+6r   �� 57      $��Ngày Lập thẻ��6-   $
 auto��6�    6C   �� *NgayLT+$ 	dd/MM/yyy��6�   �� 58      $��Loại độc giả��6-   $
 auto��6r    6C   �� *LOAIDG.TenLDG+6�   59      5;      5<      5=      5>      5?      