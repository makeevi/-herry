   M S B A M L   `   `   `  ���� B  >Сherry, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:СherryСherry      Сherry.MainWindow   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:Сherry     b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Title$  
MainWindow��$	��550��$	��800��$	��550�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ CanResizeWithGrip=� � WindowStyle$
 None=� � ShowInTaskbar$
 True�� � AllowsTransparency$
 True��.���  � RowDefinitions �� $
��auto ��� .+�� -   $��0��$��30��
������ .+�]� $��Right=�$��Center=�.+��  � Cursor$
 Hand��
������ .+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�   ColorForegroundPackIcon#��[  $��25��$��25��	 J� InputBindings	 d� 
 d� Gesture$
 	LeftClicka� �� Command �� *BtnWindowMinimize+� $��5��� $
 Hand��
������ .+�  $ WindowMaximize=�#��[  $��25��$��25��	 d� $
 	LeftClicka� �� *BtnWindowMaximize+� $��5��� $
 Hand��
������ .+�  $ WindowClose=�#��[  $��25��$��25��	 d� $
 	LeftClicka� �� *BtnWindowClose+� $��5�� � $��1��  � NavigationUIVisibility$ Hidden=�$��0q�$��0q����� *CurrentPage+ J� Opacity �� *FrameOpacity+