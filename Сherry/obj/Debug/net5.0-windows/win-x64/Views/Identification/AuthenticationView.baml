   M S B A M L   `   `   `  ����B  >Сherry, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Сherry.Views.IdentificationСherry.Views.Identification  5      7 clr-namespace:Сherry.ViewModelsСherry.ViewModels  5      5    /Сherry.Views.Identification.AuthenticationView   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:Сherry.Views.Identification     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      5localmultiConv clr-namespace:Сherry.ViewModels  5      $	��520��5      $	��350��6     N� Title$  AuthenticationView��5       � 	Resources 5      '  !Сherry.ViewModels.MultiConverter   MultiValConverter��%   &	          5   
   6(   5      .��5      � .+�5   
   � .+�5      �� $	��309��6   $	��Top=�6%    �� RadiusY$ 10��6>    �� RadiusX$ 10��6K   ��5      �� 5       �� EndPoint$ 0.5,1&�6*    �� 
StartPoint$ 0.5,0&�6;   .��5      �  � Color$ #00aaf7��6'   � 5      $ White��6'    � Offset$ 1Q�65   � 5      $ #00aaf7��6'   $ 0.546Q�67   5      5      �� 5!      $	��280��6   $	��240��6$   $��Bottom=�61   $
��0,80q�6L   $ 10��6Z   $ 10��6g   
������� J� Effect 5"      3  -System.Windows.Media.Effects.DropShadowEffect  5#      	   
BlurRadius$	 15Q�6'   
   	Direction$
 0Q�67      RenderingBias$ Quality=�6E      ShadowDepth$ 1Q�6]      Color$
 Gray��6m   5%      � 5&      $��Bottom=�6   $��35,80q�6.   $	��240��6=   .+�5'      �� $%��ВХОД В ПРОГРАММУ ��6   $��Center=�64   $	��Top=�6Q   $��5q�6i   
�������$��18(�6�   �� 5(      $��Center=�6   $��15q�68   .+�5)      �� -   5         ��Name$	 log��5.   !   $
��0,10q�5+      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
ЛОГИН��5,       % !MaterialDesignFloatingHintTextBox#��[ 5-      $��18(�6P   $	��200��5.      ��5*      �� *Login+ �� UpdateSourceTrigger$ PropertyChanged=�5.   !   G� 50      -   5         G�Name$
 pass��56      $ ПАРОЛЬ��51       ) %MaterialDesignFloatingHintPasswordBox#��[ 52      $
��0,10q�53      $��18(�54      $	��200��55      56   #   57      59      �� 5:      $	��150��5;      $��Center=�5<      $��Bottom=�5=      $
��0,65q�5>      $��
ВОЙТИ��5?      ��5@      �� *BtnEnterClick+��5A      `� 5B       `� 	Converter# [  6#   .1�5C      ��  �� Path$
 Text�6"    �� ElementName$	 log��6.   �� 5D      $	 Tag�6"   $
 pass��6-   5E      5H      � 5J      .+�5K      � .+�5L      �� $2��,Забыли логин или пароль?��6    $��Center=�5M      $��Bottom=�5N      $��30q�5O      
������� � Cursor$
 Hand��6:    J� InputBindings 5P      d� 5Q       d� Gesture$ 	LeftClicka�6'    �� Command 6;   �� *BtnPasswordRecovery+5T      � 5V      .+�5W      �� $��Регистрация��6    $��Center=�5X      $��Bottom=�5Y      $��10q�5Z      ���#00aaf7$
 Hand��5[   1    5\      d� 5]      $ 	LeftClicka�6'    6;   �� *BtnRegisteringNewUser+5`      5b      � 5h      $	��160��6   $	��160��6   $	��Top=�6,   $��30q�6D   .+�5i      A� 
������� 5j        5k      $	 60Q�6+   $
 0Q�6;   $ Quality=�6I   $ 0Q�6a   $ White��6q   5o      � 5q      .+�5r      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ KeyChainVariant=�6.   $��Center=�6E   $��Center=�6`   $��60��6~   $��60��6�     ColorForegroundPackIcon#��[ 6�   5s      5t      5u      5w      5x      