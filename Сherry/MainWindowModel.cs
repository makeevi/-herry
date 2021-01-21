using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using Сherry.ViewModels;
using Сherry.ViewModels.Identification;
using Сherry.Views.Identification;

namespace Сherry
{
    class MainWindowModel: BaseViewModel, IMainWindow
    {
        private Page currentPage;
        private double frameOpacity;

        public ICommand BtnWindowMinimize { get; }
        public ICommand BtnWindowMaximize { get; }
        public ICommand BtnWindowClose { get; }

        public Page CurrentPage { get => currentPage; set => Set(ref currentPage, value); }
        public double FrameOpacity { get => frameOpacity; set => Set(ref frameOpacity, value); }

        public MainWindowModel(Window window)
        {
            FrameOpacity = 1;

           var identificationLogic = new IdentificationLogic(this);
           identificationLogic.Notify += IdentificationLogicNotify;



           BtnWindowMinimize = new DelegateCommand((obj) => window.WindowState = window.WindowState == WindowState.Normal ? WindowState.Minimized : WindowState.Normal);
           BtnWindowMaximize = new DelegateCommand((obj) => window.WindowState = window.WindowState == WindowState.Normal ? WindowState.Maximized : WindowState.Normal);
           BtnWindowClose = new DelegateCommand((obj) => Environment.Exit(0));
        }

        private void IdentificationLogicNotify(bool result)
        {
            SetCurrentPage(new Views.MainMenuView());
        }

        public void SetCurrentPage(Page page)
        {
            CurrentPage = page;
        }
    }

    interface IMainWindow
    {
        void SetCurrentPage(Page page);
    }
}
