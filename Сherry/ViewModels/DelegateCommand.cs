using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Сherry.ViewModels
{
    class DelegateCommand : ICommand
    {
        /// <summary>
        /// если нет canExecute комнада будет выполнятся в любом случае 
        /// </summary>
        /// <param name="execute"></param>
        /// <param name="canExecute"></param>
        public DelegateCommand(Action<object> execute, Func<object, bool> canExecute = null, EventWaitHandle eventClick = null)
        {
            this.canExecute = canExecute;
            this.eventClick = eventClick;
            this.execute = execute ?? throw new ArgumentException(nameof(execute));

        }

        private Action<object> execute;
        private Func<object, bool> canExecute;
        private EventWaitHandle eventClick;

        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        /// <summary>
        /// Может ли команда вполнить свою логику
        /// </summary>
        /// <param name="parameter"></param>
        /// <returns></returns>
        public bool CanExecute(object parameter)
        {
            //return this.canExecute == null || this.canExecute(parameter);
            return canExecute?.Invoke(parameter) ?? true;
        }
        /// <summary>
        /// Будет выполнен когда команда может выпольнить свою логику
        /// </summary>
        /// <param name="parameter"></param>
        public void Execute(object parameter)
        {
            eventClick?.Set();
            this.execute(parameter);
        }
    }
}
