using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Сherry.ViewModels.Validation
{

    public class DefaultValidationRule : ValidationRule
    {
        public int MinLength { get; set; }
        public int MaxLength { get; set; }

        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {

            var login = value as String;

            if (login?.Length < MinLength && !string.IsNullOrWhiteSpace(login))
                return new ValidationResult(false, string.Format("Длина не может быть менее {0} символов", MinLength));

            if (login?.Length > MaxLength && !string.IsNullOrWhiteSpace(login))
                return new ValidationResult(false, string.Format("Длина не может быть более {0} символов", MaxLength));

            return ValidationResult.ValidResult;
        }
    }
}
