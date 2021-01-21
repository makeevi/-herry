using System;
using System.Collections.Generic;
using System.Globalization;
using System.Windows.Controls;

namespace Сherry.ViewModels.Validation
{
    public class LoginValidationRule : ValidationRule
    {
        public int MinLength { get; set; }
        public int MaxLength { get; set; }

        //TODO Необходимо провести проверку на уникальность логина
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            var login = value as String;

            if (login?.Length < MinLength && !string.IsNullOrWhiteSpace(login))
                return new ValidationResult(false, string.Format("Длина логина не может быть менее {0} символов", MinLength));

            if (login?.Length > MaxLength && !string.IsNullOrWhiteSpace(login))
                return new ValidationResult(false, string.Format("Длина логина не может быть более {0} символов", MaxLength));





            //if (string.IsNullOrWhiteSpace((value ?? "").ToString()))
            //{
            //    return new ValidationResult(false, "Поле должно быть заполнено");
            //}

            return ValidationResult.ValidResult;

            //else
            //{
            //    if (value.ToString() == "Ask0n") //Тут чек в бд я его стер просто для примера 
            //        return ValidationResult.ValidResult;
            //    else
            //        return new ValidationResult(false, "Такой логин уже существует");
            //}
        }
    }
}
