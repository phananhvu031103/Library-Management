   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5   	   [2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5   	   =    7LibraryManagement.UserControlLibrary.AddPhieuMuonWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:LibraryManagement.UserControlLibrary     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
   
   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   ;uc2clr-namespace:LibraryManagement.UserControlLibrary  5   	   -   5        $��addPhieuMuonWindow��5   	     � Title$  Thêm phiếu mượn��5   	   $	��450��6!   $	��800��6.      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   �� 5       $
��auto �6   6,   .+�5#   
   � $��0��6   .+�5$      7   1LibraryManagement.UserControlLibrary.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ loaiNhanVienWindow��5%      5&      #  MaterialDesignThemes.Wpf.Card  5'   
   $��1��6   $��5q�6,   .��5(      � .+�5)      �� $
��auto��6    �� DisplayMemberPath$
 MaDG��6(   $��5q�6�   )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Mã độc giả��6�   
 �� 
IsEditable
 .  & "MaterialDesignFloatingHintComboBox#��[ 6  ��6A   �� *THEDOCGIAList+ �� SelectedItem 6g   �� *SelectedTHEDOCGIA+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6K  �� 5*       �� 
IsReadOnly . $
��auto��6,   $��5q�6�   $	 Tên độc giả��6�    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��69   �� *HoTen+$ PropertyChanged=�$ TwoWay=�6�   �� 5+       . $
��auto��6,   $��5q�6�   $	 Ngày mượn��6�   #��[ 6�   ��69   �� *
NgayMuon+ �� StringFormat$ 
dd/MM/yyyy��$ PropertyChanged=�$ TwoWay=�6�   5,      5-      � 5/   
   $��2��6   $��5q�6    � ColumnDefinitions 50      �� 51      $
��Auto �6#   �� 52      $
��Auto �6#   �� 53      .+�56      � $��0��6    57      �� 58      $
��auto �6$   64   �� 59      6&   .+�5<      (  "MaterialDesignThemes.Wpf.ColorZone  $��0��6+   $��5q�68      CornerRadius$ 2��6C    K� ZIndex$ 1��6T   $
��Left=�6e   $��Center=�6�   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�6�   .��5=      � .+�5>           Mode$ Standard=�63   $��0q�6C   $ 2��6O   $ 1��6`   $��5q�6q   $ Depth1=�6|   .��5?      �  5@   "   �� 5A   &   $
��Auto �67   �� 5B   &   $
��Auto �67   .+�5D   "   ��   MaterialDesignToolButton#���  6)   ��6\   �� *SearchCommand+.��5E   &   '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ Magnify=�6>    J� Opacity$	 .56Q�6M   5F   #   �� 5G   "   $��1��6*   $��5q�6{   $!	 Tìm kiếm theo tên sách��6�   .	  (MaterialDesignThemes.Wpf.TextFieldAssist 	  DecorationVisibility$ Hidden=�6�   $��0q�5H      $	��200��61   $��Center=�6@   ��5G   :   �� *
SearchName+$ PropertyChanged=�5H   @   5I      5J      �� 5L      $��2��6!   $��0q�61   $��5q�6=    # MaterialDesignRaisedLightButton#��[ 6H   $��40��6�    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��5M      ��6N   �� *ViewListCommand+.��5N        $ ViewList=�66   5O      5P      5Q        5S      $��1��6&   $��5q�63   $��Stretch=�6>   $��Stretch=�6Z   .��5T      �� $
��Auto=�6#   .��5U      �� $
��auto��6   ��6#   �� *
SACHList+ 6D   �� *SelectedSACH+$ OneWayToSource=� �� View 5V      �� 5W   "   .P�5X   &   �� $��	Mã sách��65    �� Width$
 auto��6n    �� DisplayMemberBinding 6F   �� *MaSach+6}   �� 5Y   &   $��
Tên sách��65   $
 auto��6p    6G   �� *	TenSach+6   5Z   #   5\      5]      5^      5_      � 5a      $��1��6    5b      �� 5c      $��54 �6$   62   �� 5d      6&   .+�5g      � $��0��6   6&   �� 5i      $��1��6   $��Center=�6*   .+�5j      �� $��0q�6   $��5q�6)   #��[ 64   $��40��6m   $4 .Resource name: MaterialDesignRaisedLightButton��6x   ��6�   �� *PushCommand+.��5k        $ ArrowRightBold=�62   5l      �� 5m      $��0q�6   $��5q�6)   #��[ 64   $��40��6m   $4 .Resource name: MaterialDesignRaisedLightButton��6x   ��6�   �� *
PopCommand+.��5n        $ ArrowLeftBold=�62   5o      5p      5q      � 5s      $��2��6    5t      �� 5u      $��54 �6$   62   �� 5v      6&   .+�5y      � $��0��6   6&     5{      $��1��6&   $��5q�63   $��Stretch=�6>   $��Stretch=�6Z   .��5|      �� $
��Auto=�6#   .��5}      �� $��Stretch=�6   $��10q�6�   ��6#   �� *
CTPMList+ 6D   �� *SelectedCTPM+$ OneWayToSource=� 5~      �� 5   "   .P�5�   &   �� $��	Mã sách��65    6F   �� *MaSach+6p   �� 5�   &   $��
Tên sách��65    6G   �� *	TenSach+6r   5�   #   5�      5�      5�      5�      5�        5�   
   $��3��6   $��5q�6+   $��42��66   $��2��6B   $��Stretch=�6V   .��5�      � $��Right=�6   .+�5�      �� $��Thêm��6t   $��5q�6�   $��80��6�   ��6   �� *
AddCommand+��68   �� $ addPhieuMuonWindow��6�   �� 5�      $��Thoát��6w   $��5q�6�   $��80��6�   ��6   �� *CancelCommand+��6;   �� $ addPhieuMuonWindow��6�   5�      5�      5�      5�      