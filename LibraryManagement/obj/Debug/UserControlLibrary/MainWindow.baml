   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:LibraryManagement.ViewModelLibraryManagement.ViewModel  5   	   [2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5   	   5    /LibraryManagement.UserControlLibrary.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:LibraryManagement.ViewModel     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   ;uc2clr-namespace:LibraryManagement.UserControlLibrary  5   	   -   5        $��
mainWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    
 MainVM � DataContext# [ 5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Quản lý thư viện��5   	   $	��600��6"   $
��1100��6/    � 	Resources 5        OpenMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame	 O� KeyTime
 O� Value  	CloseMenu��%�  &	       &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $	 0��6'   $
 70Q�63     5      $	 0:0:0.5��6'   $	
 215Q�69   5      5      �� 5    
   .��5!      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5"        $	 0��6'   $	
 200Q�63     5#      $	 0:0:0.5��6'   $
 50Q�69   5$      5%      5&       � Triggers 5'      :� 5(   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5)      �� #��[ 6   5*      :� 5+   
   $ ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5,      �� #��[ 6   5-      .  (System.Windows.Interactivity.Interaction   Triggers 5/      /  )System.Windows.Interactivity.EventTrigger  50   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 51      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadedWindowCommand+   CommandParameter 52   $   ��  �� ElementName$ 
mainWindow��53      .��56      �  � RowDefinitions 57   
   �� 58      $
��auto �6   6,   �� 59      6   .+�5;   
   � $��0��6   .+�5<      7   1LibraryManagement.UserControlLibrary.ControlBarUC  
 � Tag 6   �� *Title+$ 
mainWindow��6N   5=      � 5?   
   $��1��6    � ColumnDefinitions 5@      �� 5A      $
��auto �6#   62   �� 5B      6%   .+�5D      � $��0��6   .+�5E      � -   5         �Name$ GridMenu��5E      $��50��6)   $
��Left=�64   
���iii� J� Effect 5F      3  -System.Windows.Media.Effects.DropShadowEffect  5G         
BlurRadius$ 2Q�6+      ShadowDepth$ 1Q�6:      Color$ 	#FFAEAEAE��6J   .+�5I      �� $��Stretch=�6!   .+�5J      � $	��150��6   
������� J� RenderTransformOrigin$ 0.5,0.5&�6?   z�5K      V� 5L   "   .~�5M   &   �� �� 5N   &   �� 5O   &   T� 5P   &   5Q   #   .+�5S      �� -   5         ��Name$ ButtonOpenMenu��5S   %   $��60��6�   $��50��6�   $	��Top=�6�    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6�   
���   �$��Right=�6=  ��6=   �� *OpenMenuCommand+y�6a   �� *ButtonOpenMenu+��6�   Z� ��6  Z� .��5T   "   '	  !MaterialDesignThemes.Wpf.PackIcon	  $��Center=�6:   �
  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]] 
  Kind$
 Menu=�6W   $��25��6c   $��25��6n   5U      �� 5V      -   5        $ ButtonCloseMenu��5V   %   $��60��6�   $��50��6�   $��0q�6�   $��Right=�6�   $	��Top=�6�   #��[ 6�   
���   ���6>   �� *CloseMenuCommand+y�6c   �� *ButtonCloseMenu+��6&  Z� ��6<  Z� .��5W   "   	  $ 	ArrowLeft=�6:   $��Center=�6L   $��25��6i   $��25��6t   5X      �� 5Y      -   5         ��Name$ 
imgProfile��5Y   $   $��25q�68   $/��)/LibraryManagement;component/ic_user1.png��6D    5Z   "     5[   &   $ 	MouseDown��65   . 5\   *      6@   �� *OpenProfileCommand+ 6g   �� $ 
imgProfile��5]   '   5_      �� 5`      $��Admin��6$   $��Center=�64   $��Times New Roman)�6X   $��33��6u   $��36,162,36,0q�6�   $	��Top=�6�   $��20(�6�   5a      �� 5b      -   5          ��Name$  ListViewMenu��5b   #   
�������$��Disabled=�6M    5c        5d   "   $ SelectionChanged��61   . 5e   &      6<   �� *OpenUCCommand+ 5f   $   �� $ ListViewMenu��5g   #   .@�5i      �� -   5        ! ��Name$! 	TheDocGia��5i   +   $��50��6>   $��16(�6J   .��5j   "   �� " �� Orientation$" 
Horizontal=�6-   .+�5k   &   	  $ Contacts=�6>   $��20��6N   $��20��6Z   $��5q�6e   �� 5l   &   $��Quản lý độc giả��60   $��Center=�6G   $
��10 0q�6b   $��Times New Roman)�6p   5m   #   5n      �� 5o      -   5        $! 	PhieuMuon��5o   +   $��50��6>   .��5p   "   �� $" 
Horizontal=�6-   .+�5q   &   	  $ LibraryBooks=�6>   $��20��6R   $��20��6^   $��5q�6i   �� 5r   &   $ ��Quản lý phiếu mượn��60   $��Center=�6J   $
��10 0q�6e   $��Times New Roman)�6s   $��16(�6�   5s   #   5t      �� 5u      -	   5        $
! Sach��5u   +   $��50��69   .��5v   "   �� $" 
Horizontal=�6-   .+�5w   &   	  $ ImportContacts=�6>   $��20��6T   $��20��6`   $��5q�6k   �� 5x   &   $��Quản lý sách��60   $��Center=�6D   $
��10 0q�6`   $��Times New Roman)�6n   $��16(�6�   5y   #   5z      �� 5{      -
   5        $! NhanVien��5{   +   $��50��6=   .��5|   "   �� $" 
Horizontal=�6-   .+�5}   &   	  $ 
AccountBox=�6>   $��20��6P   $��20��6\   $��5q�6g   �� 5~   &   $��Quản lý nhân viên��60   $��Center=�6I   $
��10 0q�6e   $��Times New Roman)�6s   $��16(�6�   5   #   5�      �� 5�      -   5        $! QuyDinh��5�   +   $��50��6<   .��5�   "   �� $" 
Horizontal=�6-   .+�5�   &   	  $
 Edit=�6>   $��20��6J   $��20��6V   $��5q�6a   �� 5�   &   $��Thay đổi quy định��60   $��Center=�6I   $
��10 0q�6e   $��Times New Roman)�6s   $��16(�6�   5�   #   5�      �� 5�      -   5        $! ThongKe��5�   +   $��50��6<   .��5�   "   �� $" 
Horizontal=�6-   .+�5�   &   	  $ 
Assessment=�6>   $��20��6P   $��20��6\   $��5q�6g   �� 5�   &   $��Báo cáo thống kê��60   $��Center=�6H   $
��10 0q�6d   $��Times New Roman)�6r   $��16(�6�   5�   #   5�      �� 5�      -   5        $! DangXuat��5�   +   $��50��6=   .��5�   "   �� $" 
Horizontal=�6-   .+�5�   &   	  $ Logout=�6>   $��25��6L   $��25��6X   $��5q�6c   �� 5�   &   $��Đăng xuất��60   $��Center=�6A   $
��10 0q�6]   $��Times New Roman)�6k   $��16(�6�   5�   #   5�      5�      5�      5�      5�      � 5�      -   5        $��GridMain��5�      $��1��6#   $��5q�63   .+�5�      >� ��6   �� *contentControl+6D   5�      5�      5�      5�      