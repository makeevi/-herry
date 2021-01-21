using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;
using Сherry.Views.Identification;

namespace Сherry.ViewModels.Identification
{
    public class AuthenticationModel : BaseViewModel
    {
        private string login;
        private string password;

        public delegate void AccountHandler(string login, string password);
        public event AccountHandler Notify;
        public event Action PasswordRecovery;
        public event Action RegisteringNewUser;
        public ICommand BtnEnterClick { get; }
        public ICommand BtnPasswordRecovery { get; }
        public ICommand BtnRegisteringNewUser { get; }

        public string Login
        {
            get => login;
            set => Set(ref login, value);
        }
        public string Password
        {
            get => password;
            set => Set(ref password, value);
        }
        public AuthenticationModel()
        {            
            BtnEnterClick = new DelegateCommand(CheckLoginPassword);
            BtnPasswordRecovery = new DelegateCommand((obj)=> PasswordRecovery?.Invoke());
            BtnRegisteringNewUser = new DelegateCommand((obj) => RegisteringNewUser?.Invoke());
            Page = new AuthenticationView(this);
        }

        private void CheckLoginPassword(object obj)
        {
            string login = ((Tuple<string, string>)obj).Item1;
            string password = ((Tuple<string, string>)obj).Item2;

            Notify?.Invoke(login, password);
        }
    }
}
