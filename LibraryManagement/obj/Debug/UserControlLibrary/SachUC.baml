   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5      1    +LibraryManagement.UserControlLibrary.SachUC   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Dlocal2clr-namespace:LibraryManagement.UserControlLibrary     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5        $��ucSach��5
         MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   #  MaterialDesignThemes.Wpf.Card  $��0��6   $��5q�6+   .��5      � $��0 0 0 10q�6   .+�5      �� $��5 5 15 5q�6X   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Tên sách��6j    % !MaterialDesignFloatingHintTextBox#��[ 6�   $
��auto��6�   ��6   �� *	TenSach+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5       $��5 5 15 5q�6W   $ 
Tác giả��6i   #��[ 6�   $
��auto��6�   ��6   �� *TacGia+$ PropertyChanged=�6�   �� 5!      $��5 5 15 5q�6V   $ Năm xuất bản��6h   #��[ 6�   $
��auto��6�   ��6   �� *NamXB+$ PropertyChanged=�6�   �� 5"      $��5 5 15 5q�6V   $ Nhà xuất bản��6h   #��[ 6�   $
��auto��6�   ��6   �� *NhaXB+$ PropertyChanged=�6�   �� 5#      $��5 5 15 5q�6s   $ Ngày nhập��6�   {�.  #��[ 6�   $
��auto��6�   ��6   �� *
NgayNhap+ �� StringFormat$ 
dd/MM/yyyy��$ PropertyChanged=�6�   �� 5$      $��5 5 15 5q�6Z   $ Tình trạng��6l   {�.  #��[ 6�   $
��auto��6�   ��6   �� *	TinhTrang+$ PropertyChanged=�6�   �� 5%      $��5 5 15 5q�6    �� DisplayMemberPath$ TenLS��6-   $ Loại sách��6�    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 6  $	��100��6A  ��6G   �� *LOAISACHList+ �� SelectedItem 6l   �� *SelectedLOAISACH+	 �� Mode$	 TwoWay=�$ PropertyChanged=�6O  5&      5'        5)   
   $��1��6   $��5q�6+   .��5*      � .+�5+      �� $��Thêm��6h   $��5q�6w   $	��100��6�   ��6   �� *
AddCommand+��68   �� 
 �� ElementName$
 ucSach��6�   �� 5,      $��Sửa��6i   $��5q�6x   $	��100��6�   ��6   �� *EditCommand+��69   �� $
 ucSach��6�   �� 5-      $��Xóa��6k   $��5q�6z   $	��100��6�   ��6   �� *DeleteCommand+��6;   �� $
 ucSach��6�   5.      5/      (  "MaterialDesignThemes.Wpf.ColorZone  51   
   $��2��6#   $��5q�60      CornerRadius$ 2��6;    K� ZIndex$ 1��6L   $
��Left=�6]   $��Center=�6x   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�6�   .��52      � .+�53           Mode$ Standard=�6+   $��0q�6;   $ 2��6G   $ 1��6X   $��5q�6i   $ Depth1=�54      .��55      �  � ColumnDefinitions 56      �� 57      $
��Auto �6/   �� 58      $
��Auto �6/   .+�5:      ��   MaterialDesignToolButton#���  6!   ��6T   �� *SearchCommand+.��5;      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ Magnify=�66    J� Opacity$	 .56Q�6E   5<      �� 5=      $��1��6"   $��5q�6s   $! Tìm kiếm theo tên sách��6~   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�6�   $��0q�5>      $	��200��61   $��Center=�6@   ��5=   2   �� *
SearchName+$ PropertyChanged=�5>   @   5?      5@      �� 5P      $��2��6   $��0q�6)   $��5q�65    # MaterialDesignRaisedLightButton#��[ 6@   $��40��6y    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��5Q      ��6N   �� *ViewListCommand+.��5R        $ ViewList=�6.   5S      5T      5U        5X   
   $��3��6   $��5q�6+   $��Stretch=�66   $��Stretch=�6R   .��5Y      �� $
��Auto=�6   .��5Z      �� $
��auto��6s   ��6   �� *List+ 68   �� *SelectedItem+$	 OneWayToSource=� �� View 5[      �� 5\      .P�5]      �� $��	Mã sách��6-    �� Width$
 auto��6f    �� DisplayMemberBinding 6>   �� *MaSach+6u   �� 5^      $��
Tên sách��6-   $
 auto��6h    6?   �� *	TenSach+6w   �� 5_      $��
Tác giả��6-   $
 auto��6f    6>   �� *TacGia+6u   �� 5`      $��Năm XB��6-   $
 auto��6d    6=   �� *NamXB+6s   �� 5a      $��Nhà XB��6-   $
 auto��6d    6=   �� *NhaXB+6s   �� 5b      $��Ngày nhập��6-   $
 auto��6�    6@   �� *
NgayNhap+$ 
dd/MM/yyyy��6�   �� 5c      $��Tình trạng��6-   $
 auto��6l    6A   �� *	TinhTrang+6{   �� 5d      $��Loại sách��6-   $
 auto��6p    6@   �� *LOAISACH.TenLS+6   5e      5g      5h      5i      5j      5k      