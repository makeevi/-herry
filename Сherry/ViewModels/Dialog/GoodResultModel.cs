using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Сherry.Views.Dialog;

namespace Сherry.ViewModels.Dialog
{
    public class GoodResultModel : BaseViewModel
    {
        private string message;
        public string Message { get => message; set => Set(ref message, value); }
        public ICommand BtnClick { get; }

        public event Action BtnClickEvent;
        public GoodResultModel()
        {
            BtnClick = new DelegateCommand((obj) => BtnClickEvent?.Invoke());
            Page = new GoodResultView(this);
        }
    }
}
