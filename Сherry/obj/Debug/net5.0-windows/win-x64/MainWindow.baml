   M S B A M L   `   `   `  ����B  >Сherry, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:СherryСherry  5   	       Сherry.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Сherry     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  6,     � Title$  
MainWindow��5   	   $	��550��6   $	��800��6)   $	��550��65    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ CanResizeWithGrip=�5   	    � WindowStyle$
 None=�5   	    � ShowInTaskbar$
 True��5   	    � AllowsTransparency$
 True��5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      .+�5   
   � -   5        $��0��5      $��30��6   
������ .+�5      ]� $��Right=�6   $��Center=�64   .+�5      �  � Cursor$
 Hand��6   
������ .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�6.      ColorForegroundPackIcon#��[  6E   $��25��6{   $��25��6�   	 J� InputBindings	 5      d� 5      
 d� Gesture$
 	LeftClicka�6'    �� Command 6;   �� *BtnWindowMinimize+5       � 5!      $��5��6   � 5#      $
 Hand��6   
������ .+�5$        $ WindowMaximize=�6.   #��[  6E   $��25��6{   $��25��6�   	 5%      d� 5&      $
 	LeftClicka�6'    6;   �� *BtnWindowMaximize+5(      � 5)      $��5��6   � 5+      $
 Hand��6   
������ .+�5,        $ WindowClose=�6.   #��[  6C   $��25��6z   $��25��6�   	 5-      d� 5.      $
 	LeftClicka�6'    6;   �� *BtnWindowClose+50      � 51      $��5��6   52      53       � 55   
   $��1��6     � NavigationUIVisibility$ Hidden=�57      $��0q�58   .   $��0q�6:   ��56      �� *CurrentPage+ J� Opacity 58      �� *FrameOpacity+5:      5<      5=      