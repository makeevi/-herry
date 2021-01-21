using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace Сherry.ViewModels
{
    class MultiConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {

            if (values == null)
                return null;

            switch (values.Length)
            {
                case 0: return null;
                case 1: return new Tuple<string>((string)values[0]);
                case 2: return new Tuple<string, string>((string)values[0], (string)values[1]);
                case 3: return new Tuple<string, string, string>((string)values[0], (string)values[1], (string)values[2]);
                case 4: return new Tuple<string, string, string, string>((string)values[0], (string)values[1], (string)values[2], (string)values[3]);
                case 5: return new Tuple<string, string, string, string, string>((string)values[0], (string)values[1], (string)values[2], (string)values[3], (string)values[4]);
                case 6: return new Tuple<string, string, string, string, string, string>((string)values[0], (string)values[1], (string)values[2], (string)values[3], (string)values[4], (string)values[5]);
            }

            return null;


            /*Tuple<string, string, string> tuple = new Tuple<string, string, string>((string)values[0], (string)values[1], (string)values[2])*/
            ;
            //return tuple;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }


    }
}
