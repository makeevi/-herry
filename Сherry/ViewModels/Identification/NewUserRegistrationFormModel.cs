using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Сherry.Views.Identification;

namespace Сherry.ViewModels.Identification
{
    public class NewUserRegistrationFormModel: BaseViewModel
    {
        public delegate void AccountNewUser(NewUserRegistration newUser);
        public event AccountNewUser SuccesCompletionForm;
        public event Action<string> ErrorForm;
        public event Action CancelForm;
        public ICommand BtnCancel { get; }
        public ICommand BtnSave { get; }

        public string Name { get; set; }
        public string Phone { get; set; }
        public string Login { get ; set; }
        public string Password { get; set; }
        public string PasswordChecking { get; set; }

        public bool Checking 
        { 
            get
            {
                if (string.IsNullOrWhiteSpace(Login))
                    return false;

                if (string.IsNullOrWhiteSpace(Password))
                    return false;

                if (string.IsNullOrWhiteSpace(PasswordChecking))
                    return false;

                return true;
            } 
        }



        public NewUserRegistrationFormModel()
        {
            Page = new NewUserRegistrationFormView(this);
            BtnSave = new DelegateCommand((obj) =>             
            {

                if (!Checking)
                {
                    ErrorForm?.Invoke("Вы не заполнили обязательные поля");
                    return;
                }


                if (Password != PasswordChecking)
                {
                    ErrorForm?.Invoke("Ой, пароли не совпадают");
                    return;
                }

                SuccesCompletionForm.Invoke(new NewUserRegistration() 
                {
                    Login = Login, 
                    Name = Name, 
                    Password = Password, 
                    Phone = Phone
                });




            });
            BtnCancel = new DelegateCommand((obj) => CancelForm?.Invoke());
        }
    }

    public struct NewUserRegistration
    {
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
    }
}
