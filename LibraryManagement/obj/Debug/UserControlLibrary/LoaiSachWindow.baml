   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5   	   [2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5   	   9    3LibraryManagement.UserControlLibrary.LoaiSachWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:LibraryManagement.UserControlLibrary     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   
   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   ;uc2clr-namespace:LibraryManagement.UserControlLibrary  5   	   -   5        $��loaiSachWindow��5   	     � Title$  Quản lý loại sách��5   	   $	��450��6#   $	��400��60      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   .+�5"   
   � $��0��6   .+�5#      7   1LibraryManagement.UserControlLibrary.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ loaiSachWindow��5$      5%      #  MaterialDesignThemes.Wpf.Card  5)   
   $��1��6   $��5q�6+   .��5*      � $��0 0 0 10q�6   .+�5+      �� $��5 5 15 5q�6b   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên loại sách��6t    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *TenLS+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� Mode$
 TwoWay=�6�   5,      5-        5/   
   $��2��6   $��5q�6+   .��50      � .+�51      �� $��Thêm��6m   $��5q�6|   $	��100��6�   ��6   �� *
AddCommand+��68   �� $ ucTheDocGia��6�   �� 52      $��Sửa��6n   $��5q�6}   $	��100��6�   ��6   �� *EditCommand+��69   �� $ ucTheDocGia��6�   �� 53      $��Xóa��6p   $��5q�6   $	��100��6�   ��6   �� *DeleteCommand+��6;   �� $ ucTheDocGia��6�   54      55        57   
   $��3��6   $��5q�6+   $��Stretch=�66   $��Stretch=�6R   .��58      �� $
��Auto=�6   .��59      �� $
��auto��6s   ��6   �� *List+ �� SelectedItem 68   �� *SelectedItem+$
 OneWayToSource=� �� View 5:      �� 5;      .P�5<      �� $��Mã loại sách��6-    �� Width$
 auto��6i    �� DisplayMemberBinding 6C   �� *MaLS+6x   �� 5=      $��Tên loại sách��6-   $
 auto��6k    6D   �� *TenLS+6z   5>      5@      5A      5B      5C      5D      