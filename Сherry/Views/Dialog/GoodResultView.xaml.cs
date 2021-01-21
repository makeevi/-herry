using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Сherry.ViewModels.Dialog;

namespace Сherry.Views.Dialog
{
    /// <summary>
    /// Логика взаимодействия для GoodResultView.xaml
    /// </summary>
    public partial class GoodResultView : Page
    {
        public GoodResultView(GoodResultModel model)
        {
            InitializeComponent();
            this.DataContext = model;
        }
    }
}
