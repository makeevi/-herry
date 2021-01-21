using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Сherry.Views;

namespace Сherry.ViewModels
{
    public class LoadShowModel : BaseViewModel
    {
        private string message;
        public string Message { get => message; set => Set(ref message, value); }
        public LoadShowModel()
        {
            Page = new LoadShowView(this);
        }
    }
}
