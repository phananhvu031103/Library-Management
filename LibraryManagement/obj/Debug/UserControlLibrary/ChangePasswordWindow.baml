   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5   	   [2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5   	   ?    9LibraryManagement.UserControlLibrary.ChangePasswordWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:LibraryManagement.UserControlLibrary     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   
   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   ;uc2clr-namespace:LibraryManagement.UserControlLibrary  5   	   -   5        $��changPasswordWindow��5   	     � Title$  Đổi mật khẩu��5   	   $	��240��6   $	��300��6+      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5       6   .+�5"   
   � $��0��6   .+�5#      7   1LibraryManagement.UserControlLibrary.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ loaiNhanVienWindow��5$      5%      � 5&   
   $��1��6   $	��5 0q�6   .+�5'      �� $��5 5 15 5q�6`   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mật khẩu cũ��6r    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *	OldPass+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� Mode$
 TwoWay=�6�   5(      � 5)   
   $��2��6   $	��5 0q�6   .+�5*      �� $��5 5 15 5q�6_   $ Mật khẩu mới��6q   #��[ 6�   ��6   �� *TenLNV+$	 PropertyChanged=�$
 TwoWay=�6�   5+      � 5,   
   $��3��6   $	��5 0q�6   .+�5-      �� $��5 5 15 5q�6_   $ Nhập lại mật khẩu��6q   #��[ 6�   ��6   �� *TenLNV+$	 PropertyChanged=�$
 TwoWay=�6�   5.      #  MaterialDesignThemes.Wpf.Card  5/   
   $��4��6   $
��5 10q�6+   .��50      � .+�51      �� $��Đổi��6;   $��5q�6I   $��70��6T   $��25��6_   ��6   �� *ChangeCommand+6m   �� 52      $��Thoát��6<   $��5q�6L   $��70��6W   $��25��6b   ��6   �� *CancelCommand+6p   53      54      55      56      