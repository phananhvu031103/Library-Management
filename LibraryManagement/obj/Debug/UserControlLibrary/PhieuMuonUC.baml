   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5      6    0LibraryManagement.UserControlLibrary.PhieuMuonUC   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Dlocal2clr-namespace:LibraryManagement.UserControlLibrary     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         MaterialDesignBody#���   5
      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      �  � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5       � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      6   .+�5   
   #  MaterialDesignThemes.Wpf.Card  $��1��6   $��0��6+   $��5,5,3,5q�6;   $��Stretch=�6L   .��5      �� $
��Auto=�6   .��5      �� $��Stretch=�6s   ��6   �� *List+ �� SelectedItem 68   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5       �� 5!      .P�5"      �� $��Mã phiếu mượn��6-    �� Width$
 auto��6j    �� DisplayMemberBinding 6D   �� *MaPM+6y   �� 5#      $��Mã độc giả��6-   $
 auto��6g    6A   �� *MaDG+6v   �� 5$      $��Tên độc giả��6-   $
 auto��6s    6B   �� *THEDOCGIA.HoTen+6�   �� 5%      $��Ngày mượn��6-   $
 auto��6�    6@   �� *
NgayMuon+	 �� StringFormat$	 
dd/MM/yyyy��6�   �� 5&      $��Ngày trả��6-   $
 auto��6�    6?   �� *	NgayTra+$	 
dd/MM/yyyy��6�   5'      5)      5*      5+        5,   
   $��1��6   $��1��6.   $��Stretch=�6;   $��0,5,5,5q�6W   $��Stretch=�6h   .��5-      �  5.      �� 5/      $
��Auto �6$   64   �� 50      $
��Auto �6$   64   �� 51      $
��Auto �6$   64   �� 52      $
��Auto �6$   64   �� 53      6&   �� 54      $
��Auto �6%   65   .+�56      � $��0��6   .+�57      �� 
 �� 
IsReadOnly
 . $
��auto��60   $��5q�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã phiếu mượn��6�    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6=   �� *MaPM+ �� UpdateSourceTrigger$ PropertyChanged=�$ TwoWay=�6�   58      � 59      $��1��6   .+�5:      �� 
 . $
��auto��60   $��5q�6�   $ Mã độc giả��6�   #��[ 6�   ��6=   �� *MaDG+$ PropertyChanged=�$ TwoWay=�6�   �� 5;      
 . $
��auto��60   $��5q�6�   $ Tên độc giả��6�   #��[ 6�   ��6=   �� *HoTen+$ PropertyChanged=�$ TwoWay=�6�   5<      � 5=      $��2��6   .+�5>      �� 
 . $
��auto��60   $��5q�6�   $ Ngày mượn��6�   #��[ 6�   ��6=   �� *
NgayMuon+$	 
dd/MM/yyyy��$ PropertyChanged=�$ TwoWay=�6�   �� 5?      
 . $
��auto��60   $��5q�6�   $ Ngày trả��6�   #��[ 6�   ��6=   �� *	NgayTra+$	 
dd/MM/yyyy��$ PropertyChanged=�$ TwoWay=�6�   5@      � 5B      $��4��6   .+�5C      �� $
��Auto=�6#   .��5D      �� $��Stretch=�6D   $��10q�6b   ��6#   �� *
BookList+ 5E      �� 5F   "   .P�5G   &   �� $	��STT��65    6B   �� *STT+6i   �� 5H   &   $��	Mã sách��65    6F   �� *MaSach+6p   �� 5I   &   $��
Tên sách��65    6G   �� *SACH.TenSach+6w   5J   #   5L      5M      5N        5O      $��5��6&   $��5q�63   $��42��6>   $��2��6J   $��Stretch=�6^   .��5P      � .+�5Q      �� $��Xác nhận trả sách��6y   $��5q�6�   $
��auto��6�   ��6!   �� *ConfirmCommand+��6D   ��  �� ElementName$ ucPhieuMuon��6�   �� 5R      $��Thêm��6u   $��5q�6�   $��80��6�   ��6!   �� *
AddCommand+��6@   �� $ ucPhieuMuon��6�   �� 5S      $��Xóa��6x   $��5q�6�   $��80��6�   ��6!   �� *DeleteCommand+��6C   �� $ ucPhieuMuon��6�   5T      5U      5V      5W      5s      5t      