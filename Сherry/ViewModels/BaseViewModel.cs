using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Сherry.ViewModels
{
    public abstract class BaseViewModel : INotifyPropertyChanged
    {
        public Page Page { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        public void RaisePropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public void RaisePropertyChangedAsync(string[] propertyName)
        {
            Task.Factory.StartNew(() =>
            {
                foreach (var item in propertyName)
                {
                    RaisePropertyChanged(item);
                }
            });
        }

        protected bool Set<T>(ref T field, T value, [CallerMemberName] string Property = null)
        {
            if (Equals(field, value)) return false;
            field = value;
            RaisePropertyChanged(Property);
            return true;
        }

        protected void Set(Action<object> value, [CallerMemberName] string Property = null)
        {

            value.Invoke(null);
            RaisePropertyChanged(Property);
        }
    }
}
