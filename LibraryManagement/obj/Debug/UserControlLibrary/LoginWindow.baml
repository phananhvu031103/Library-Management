   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:LibraryManagement.UserControlLibrary$LibraryManagement.UserControlLibrary  5   	   6    0LibraryManagement.UserControlLibrary.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Auc2clr-namespace:LibraryManagement.UserControlLibrary     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5        $��loginWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5	   	   $��13(�5
   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Đăng nhập��5   	   $	��580��6   $	��800��6(   ���	#FF384252
������� � 
ResizeMode$ NoResize=�6]    � 	Resources 5         RoundTextboxCornterTemplate1 �� 
TargetType ��Name	 �� CornerRadius  RoundTextboxCornterTemplate
 ��Name �� Triggers P� Property P� Value �� 
TargetName �� Property �� Value��%�  &	       &	 �     �� 5   
   " ��6?   .R�5      �� $ Bd��5   
   ���#f2f2f2���#f2f2f2#��z��5   
   $	 5��6>   ._�5      � .+�5      �� $��content��6`   $��Center=�6'   $��Center=�6E   6`   5      5      5      �� 5   
   .R�5      �� $ Bd��5   
   ���	#FF333C4B���#f2f2f2$��1q�5    
   $	 5��6   ._�5!      �� $
 PART_ContentHost��6   5"       5#      P� 5$       � {� .  . �5%      �� $ Bd��6C    � �� �#333C4B�� 5&      # � ��63    � ��5'      P� 5(       � ��$
 Auto��6+   . �5)      ��  � ��$	 100��61   5*      P� 5+       � ��$
 Auto��6,   . �5,      ��  � ��$ 20��62   5-      5/      51      .��52      �  � RowDefinitions 53   
   �� 54      $
��auto �6   6,   �� 55      6   .+�57   
   � $��0��6   .+�58      7   1LibraryManagement.UserControlLibrary.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ loginWindow��59      5:      � 5;   
   $��1��6    5<      �� 5=      $	��197 �6    6/   �� 5>      $	��110 �6    6/   �� 5?      $	��100 �6    6/   �� 5@      6"   .+�5B      � $��0��6   .+�5C      �� -   5        $��_image��5C      $��..\books.jpg��6&   $
��Fill=�6<   $	��197��6K   $	��Top=�6X   5D      � 5E      $��1��6   $��Bottom=�6     � ColumnDefinitions 5F      �� 5G      $
��auto �6'   66   �� 5H      6)   .+�5J      � $��0��6   $	��220��6'   .+�5K      �� $��Right=�6   $��Center=�6?   $��20q�6a   $��Times New Roman)�6m   $��18(�6�   ���#f2f2f2.��6�   Tên đăng nhập6�   5L      � 5M      $��1��6   $��2��6'   .+�5N      �� -   5         ��Name$ UserName��5N      $	��380��5O      $
��Left=�6%   $��60��6@   $��10q�6L   $��11,3,0,0q�6X   #��[ 6k   $��Times New Roman)�6�   $��18(�6�   
�������$��Center=�6�   ��5N   1   �� *
UserName+y�6K   �� *UserNameVisibility+.��5O     .  (System.Windows.Interactivity.Interaction   Triggers 5P      /  )System.Windows.Interactivity.EventTrigger  5Q         	EventName$ 	LostFocus��6-   .  (System.Windows.Interactivity.TriggerBase   Actions. 5R   "   6  0System.Windows.Interactivity.InvokeCommandAction     Command 68   �� *UserNameCommand+   CommandParameter 5S   $   �� $ HintUserNameTXT��5T      .��5U   2   5V      �� 5W      -   5        $ HintUserNameTXT��5W      $	��380��5X      $
��Left=�6*   $��60��6E   $��10q�6Q   $��11,3,0,0q�6]   $��Nhập tên đăng nhập��6p   #��[ 5Y      $��Times New Roman)�6V   $��18(�6s   
�������$��Center=�5Z   4   y�5W   7   �� *HintUserNameVisibility+.��5Z   V    5[        5\      $ GotFocus��6-   . 5]   "      68   �� *HintUserNameCommand+ 5^   $   �� $ UserName��5_      .��5`   2   5a      5b      5c      � 5d      $��2��6    5e      �� 5f      $
��auto �6'   66   �� 5g      6)   .+�5i      � $��0��6   $	��220��6'   .+�5j      �� $��Right=�6   $��Center=�6?   $��20q�6a   $��Times New Roman)�6m   $��18(�6�   ���#f2f2f2.��6�   Mật khẩu6�   5k      � 5l      $��1��6   .+�5m      G� -   5         G�Name$ FloatingPasswordBox��5m   "   $	��380��5n      $
��Left=�6%   $��60��6@   $��10q�6L    G� PasswordChar$ *��6X   #��[ 6i   $��11,3,0,0q�6�   $��Times New Roman)�6�   $��18(�6�   
�������$��Center=�6�   y�5m   ?   �� *PasswordVisibility+ 5o        5p      $ 	LostFocus��6-   . 5q   "      68   �� *PasswordCommand+ 5r   $   �� $ HintPasswordTXT��5s        5t      $ PasswordChanged��6-   . 5u   "      68   �� *PasswordChangedCommand+ 5v   $   �� $ FloatingPasswordBox��5w      5y      �� 5z      -   5        $ HintPasswordTXT��5z      $	��380��5{      $
��Left=�6*   $��60��6E   $��10q�6Q   $��11,3,0,0q�6]   $��Nhập mật khẩu��6p   #��[ 5|      $��Times New Roman)�6V   $��18(�6s   
�������$��Center=�5}   4   y�5z   7   �� *HintPasswordVisibility+.��5}   V    5~        5      $ GotFocus��6-   . 5�   "      68   �� *HintPasswordCommand+ 5�   $   �� $ FloatingPasswordBox��5�      .��5�   2   5�      5�      5�      � 5�      $��3��6    5�      �� 5�      $	��220 �6'   65   �� 5�      6)   .+�5�      � $��1��6   $	��Top=�6'   .+�5�      ��  �� 	IsDefault .  $  MaterialDesignRaisedAccentButton#��[ 5�      $	��380��5�      $��60��6)   $
��Left=�65   $��10q�6P   $��Đăng nhập��6\   
����������#f2f2f2$��Times New Roman)�5�      $��22(�6:   ���#0f0f0f � ToolTip$5 /Resource name: MaterialDesignRaisedAccentButton��5�      ��5�      �� *LoginCommand+��5�      �� $ loginWindow��5�      5�      5�      5�      5�      5�      