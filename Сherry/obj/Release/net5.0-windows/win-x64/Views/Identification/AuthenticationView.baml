   M S B A M L   `   `   `  ���� B  >Сherry, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Сherry.Views.IdentificationСherry.Views.Identification  7 clr-namespace:Сherry.ViewModelsСherry.ViewModels  5    /Сherry.Views.Identification.AuthenticationView   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     <local*clr-namespace:Сherry.Views.Identification     b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5localmultiConv clr-namespace:Сherry.ViewModels  $	��520��$	��350��  N� Title$  AuthenticationView�� � 	Resources '  !Сherry.ViewModels.MultiConverter   MultiValConverter��%   &	          .��� .+�� .+��� $	��309��$	��Top=� �� RadiusY$ 10�� �� RadiusX$ 10������  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ #00aaf7��� $ White�� � Offset$ 1Q�� $ #00aaf7��$ 0.546Q��� $	��280��$	��240��$��Bottom=�$
��0,80q�$ 10��$ 10��
������� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect  	   
BlurRadius$	 15Q�
   	Direction$
 0Q�   RenderingBias$ Quality=�   ShadowDepth$ 1Q�   Color$
 Gray��� $��Bottom=�$��35,80q�$	��240��.+��� $%��ВХОД В ПРОГРАММУ ��$��Center=�$	��Top=�$��5q�
�������$��18(��� $��Center=�$��15q�.+��� -    ��Name$	 log��$
��0,10q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
ЛОГИН�� % !MaterialDesignFloatingHintTextBox#��[ $��18(�$	��200������ *Login+ �� UpdateSourceTrigger$ PropertyChanged=�G� -    G�Name$
 pass��$ ПАРОЛЬ�� ) %MaterialDesignFloatingHintPasswordBox#��[ $
��0,10q�$��18(�$	��200���� $	��150��$��Center=�$��Bottom=�$
��0,65q�$��
ВОЙТИ������ *BtnEnterClick+��`�  `� 	Converter# [  .1���  �� Path$
 Text� �� ElementName$	 log���� $	 Tag�$
 pass��� .+�� .+��� $2��,Забыли логин или пароль?��$��Center=�$��Bottom=�$��30q�
������� � Cursor$
 Hand�� J� InputBindings d�  d� Gesture$ 	LeftClicka� �� Command �� *BtnPasswordRecovery+� .+��� $��Регистрация��$��Center=�$��Bottom=�$��10q����#00aaf7$
 Hand�� d� $ 	LeftClicka� �� *BtnRegisteringNewUser+� $	��160��$	��160��$	��Top=�$��30q�.+�A� 
�������   $	 60Q�$
 0Q�$ Quality=�$ 0Q�$ White��� .+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ KeyChainVariant=�$��Center=�$��Center=�$��60��$��60��  ColorForegroundPackIcon#��[ 