   M S B A M L   `   `   `  ���� B  >Сherry, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Сherry.Views.IdentificationСherry.Views.Identification  M+clr-namespace:Сherry.ViewModels.ValidationСherry.ViewModels.Validation  U/clr-namespace:Сherry.ViewModels.Identification!Сherry.ViewModels.Identification  M+clr-namespace:Сherry.ViewModels.ValidationСherry.ViewModels.Validation  K*clr-namespace:Сherry.ViewModels.ConverterСherry.ViewModels.Converter  >    8Сherry.Views.Identification.NewUserRegistrationFormView   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     <local*clr-namespace:Сherry.Views.Identification     b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  8domain+clr-namespace:Сherry.ViewModels.Validation  Didentification/clr-namespace:Сherry.ViewModels.Identification  =passBinding+clr-namespace:Сherry.ViewModels.Validation  8convert*clr-namespace:Сherry.ViewModels.Converter  $	��600��$	��600��  N� Title$!  NewUserRegistrationFormView�� � 	Resources 3   -Сherry.ViewModels.Converter.ConverterVisible   myDateConverter��%   &	          .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto �.+�� $��0��.+��� .+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ EmoticonHappyOutline=�$	��120��$	��120��$6��0                                          Center=�$��Center=�  ColorForegroundBlue#��[ �� $7��1Итак, давайте знакомиться..��  ColorForegroundPackIcon#��[ $��Center=�� $��1��.+��� -   $��sp��$��20q�.+��� -    ��Name$ NameTextBox��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ваше имя��.  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��   
HelperText$  ��.������  �� Path$
 Name�	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� ValidationRules
 9   3Сherry.ViewModels.Validation.DefaultValidationRule  ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated$
 True��   	MaxLength$ 20��5  /System.Windows.Controls.ExceptionValidationRule  .��� $��20���� -   $ PhoneTextBox��$ Ваш телефон��$
 True��/  )MaterialDesignThemes.Wpf.ValidationAssist   UsePopup$
 True��$  ��.������ $ Phone�$	 PropertyChanged=�
   $
 True��$ 20��  .��� $��20���� -   $ LoginTextBox��$ 
Логин��$
 True��$C =Обязательное поле для заполнения��.������ $ Login�$	 PropertyChanged=�
 7	   1Сherry.ViewModels.Validation.LoginValidationRule	  $
 True�� 	  	MinLength$ 4�� 	  	MaxLength$ 10��  .��� $��20��G� -    G�Name$ PasswordBox��$ Пароль��$
 True��$C =Обязательное поле для заполнения��*
   $Сherry.ViewModels.Validation.Secure 
  Password �� $ Password�$	 PropertyChanged=�
 :   4Сherry.ViewModels.Validation.PasswordValidationRule  $
 True��   	MinLength$ 4��   	MaxLength$ 10��� $��20��G� -   $ PasswordBox2��$) #Подтвердите пароль��$
 True��$C =Обязательное поле для заполнения�� �� $ PasswordChecking�$	 PropertyChanged=�
   $
 True��$ 4��$ 10��� $��2��.+�]� $��Right=�$��20q�.+�� $��Bottom=�
������ .+��� $��ОТМЕНА��#��[  � Cursor$
 Hand�� J� InputBindings d�  d� Gesture$ 	LeftClicka� �� Command �� *	BtnCancel+� $��20��� $��Bottom=�
������ .+��� $��СОХРАНИТЬ��#��[ $
 Hand�� d� $ 	LeftClicka� �� *	BtnSave+