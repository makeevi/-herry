   M S B A M L   `   `   `  ����B  >Сherry, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Сherry.Views.IdentificationСherry.Views.Identification  5      M+clr-namespace:Сherry.ViewModels.ValidationСherry.ViewModels.Validation  5      U/clr-namespace:Сherry.ViewModels.Identification!Сherry.ViewModels.Identification  5	      M+clr-namespace:Сherry.ViewModels.ValidationСherry.ViewModels.Validation  5      K*clr-namespace:Сherry.ViewModels.ConverterСherry.ViewModels.Converter  5      >    8Сherry.Views.Identification.NewUserRegistrationFormView   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:Сherry.Views.Identification     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      8domain+clr-namespace:Сherry.ViewModels.Validation  5      Didentification/clr-namespace:Сherry.ViewModels.Identification  5	      =passBinding+clr-namespace:Сherry.ViewModels.Validation  5      8convert*clr-namespace:Сherry.ViewModels.Converter  5      $	��600��5   0   $	��600��6@     N� Title$!  NewUserRegistrationFormView��5       � 	Resources 5      3   -Сherry.ViewModels.Converter.ConverterVisible   myDateConverter��%   &	          5   
   6#   5      .��59      �  � RowDefinitions 5:   
   �� 5;      $
��auto �6   �� 5<      $
��auto �6   �� 5=      $
��auto �6   .+�5?   
   � $��0��6   .+�5@      �� .+�5B      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ EmoticonHappyOutline=�6*   $	��120��5C   *   $	��120��5D   *   $6��0                                          Center=�67   $��Center=�5E   2     ColorForegroundBlue#��[ 5F   *   �� 5H      $7��1Итак, давайте знакомиться..��6     ColorForegroundPackIcon#��[ 6?   $��Center=�6w   5J      5L      � 5N   
   $��1��6   .+�5P      �� -   5        $��sp��5P   %   $��20q�6   .+�5S      �� -   5         ��Name$ NameTextBox��5T      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ваше имя��5U      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5V         
HelperText$  ��5W      .��6;   ��5X      �� 5Y       �� Path$
 Name�6"   	 �� UpdateSourceTrigger$	 PropertyChanged=�6.   
 �� ValidationRules
 5Z      9   3Сherry.ViewModels.Validation.DefaultValidationRule  5[   "   ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated$
 True��6?      	MaxLength$ 20��6_   5  /System.Windows.Controls.ExceptionValidationRule  5]   "   5_      .��5`   $   5a      � 5c      $��20��6   �� 5e      -   5        $ PhoneTextBox��5f      $ Ваш телефон��5g      $
 True��5h      /  )MaterialDesignThemes.Wpf.ValidationAssist   UsePopup$
 True��5i      $  ��5j      .��6;   ��5k      �� 5l      $ Phone�6"   $	 PropertyChanged=�6/   
 5m        5n   "   $
 True��6?   $ 20��6_     5o   "   5q      .��5r   $   5s      � 5u      $��20��6   �� 5w      -   5        $ LoginTextBox��5x      $ 
Логин��5y      $
 True��5z      $C =Обязательное поле для заполнения��5{      .��6[   ��5|      �� 5}      $ Login�6"   $	 PropertyChanged=�6/   
 5~      7	   1Сherry.ViewModels.Validation.LoginValidationRule	  5   "   $
 True��6=    	  	MinLength$ 4��6]    	  	MaxLength$ 10��6k     5�   "   5�      .��5�   $   5�      � 5�      $��20��6   G� 5�      -   5         G�Name$ PasswordBox��5�      $ Пароль��5�      $
 True��5�      $C =Обязательное поле для заполнения��5�      *
   $Сherry.ViewModels.Validation.Secure 
  Password 5�      �� 5�      $ Password�6"   $	 PropertyChanged=�62   
 5�      :   4Сherry.ViewModels.Validation.PasswordValidationRule  5�   "   $
 True��6@      	MinLength$ 4��6`      	MaxLength$ 10��6n   5�      5�      � 5�      $��20��6   G� 5�      -   5        $ PasswordBox2��5�      $) #Подтвердите пароль��5�      $
 True��5�      $C =Обязательное поле для заполнения��5�       5�      �� 5�      $ PasswordChecking�6"   $	 PropertyChanged=�6:   
 5�        5�   "   $
 True��6@   $ 4��6`   $ 10��6n   5�      5�      5�      5�      � 5�   
   $��2��6   .+�5�      ]� $��Right=�6   $��20q�64   .+�5�      � $��Bottom=�6   
������ .+�5�      �� $��ОТМЕНА��6    #��[ 6.    � Cursor$
 Hand��6`    J� InputBindings 5�      d� 5�       d� Gesture$ 	LeftClicka�6'    �� Command 6;   �� *	BtnCancel+5�      � 5�      $��20��6   � 5�      $��Bottom=�6   
������ .+�5�      �� $��СОХРАНИТЬ��6    #��[ 61   $
 Hand��6c    5�      d� 5�      $ 	LeftClicka�6'    6;   �� *	BtnSave+5�      5�      5�      5�      5�      