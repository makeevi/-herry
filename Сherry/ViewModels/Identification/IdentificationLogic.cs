using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using Сherry.ViewModels.Dialog;
using Сherry.Views.Identification;

namespace Сherry.ViewModels.Identification
{
    class IdentificationLogic
    {
        public delegate void Identification(bool result);
        public event Identification Notify;


        private IMainWindow mainWindowModel;
        private AuthenticationModel authenticationModel;

        public IdentificationLogic(IMainWindow mainWindow)
        {
            this.mainWindowModel = mainWindow;
            authenticationModel = new AuthenticationModel();
            authenticationModel.Notify += AuthenticationModelNotify;
            authenticationModel.PasswordRecovery += AuthenticationModelPasswordRecovery;
            authenticationModel.RegisteringNewUser += AuthenticationModelRegisteringNewUser;
            mainWindow.SetCurrentPage(authenticationModel.Page);

        }

        private void AuthenticationModelRegisteringNewUser()
        {
            var newUserRegistrationFormModel = new NewUserRegistrationFormModel();
            var badResultModel = new BadResultModel();

            mainWindowModel.SetCurrentPage(newUserRegistrationFormModel.Page);
            newUserRegistrationFormModel.CancelForm += ()=> mainWindowModel.SetCurrentPage(authenticationModel.Page);
            newUserRegistrationFormModel.ErrorForm += (mess) =>
            {
                badResultModel.Message = mess;
                mainWindowModel.SetCurrentPage(badResultModel.Page);
                badResultModel.BtnClickEvent += () => mainWindowModel.SetCurrentPage(newUserRegistrationFormModel.Page);
            };

            newUserRegistrationFormModel.SuccesCompletionForm += NewUserRegistrationFormModelSuccesCompletionForm;
        }

        //TODO Тут должны провести регистрацию пользователя и в случае непредвиденной ошибки вывести на экран
        private void NewUserRegistrationFormModelSuccesCompletionForm(NewUserRegistration newUser )
        {
            var goodResultModel = new GoodResultModel();
            goodResultModel.Message = "Отлично! Укажите ваш логин и пароль в новом окне";
            mainWindowModel.SetCurrentPage(goodResultModel.Page);
            goodResultModel.BtnClickEvent += ()=> mainWindowModel.SetCurrentPage(authenticationModel.Page);
        }

        private void AuthenticationModelPasswordRecovery()
        {
            var badResult = new BadResultModel();
            badResult.Message = "Ой, я пока не умею этого делать, но меня скоро научат..";
            mainWindowModel.SetCurrentPage(badResult.Page);
            badResult.BtnClickEvent += () => mainWindowModel.SetCurrentPage(authenticationModel.Page);
        }

        private async void AuthenticationModelNotify(string login, string password)
        {
            var load = new LoadShowModel();
            load.Message = "Подождите, пожалуйста";
            mainWindowModel.SetCurrentPage(load.Page);

            var result = await IdentificationСhecks(login, password);
            if (!result)
            {
                var badResult = new BadResultModel();
                badResult.Message = "Ой, введен неверный логин или пароль..";
                mainWindowModel.SetCurrentPage(badResult.Page);
                badResult.BtnClickEvent += ()=> mainWindowModel.SetCurrentPage(authenticationModel.Page);

                return;
            }

            Notify?.Invoke(result);
        }

        private Task<bool> IdentificationСhecks(string login, string password)
        {
            return Task.Run(() => 
            {
                Thread.Sleep(3000); 
                return login == "makeev";
                
            });
        }
    }
}
