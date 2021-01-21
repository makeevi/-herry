using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Сherry.ViewModels
{
    class MainMenuModel: BaseViewModel
    {
        private IEnumerable<IMenuItem> menuItemSource;

        public IEnumerable<IMenuItem> MenuItemSource { get => menuItemSource; set => Set(ref menuItemSource, value); }

        public MainMenuModel()
        {
            var menuItem = new IMenuItem[]
            {
                new MenuItem() { Text = "Помощь", PackIcon = "Help" } ,
                new MenuItem() { Text = "Продукты", PackIcon = "FoodApple" },
                new MenuItem() { Text = "Рецептуры", PackIcon = "Noodles" },
                new MenuItem() { Text = "Меню-требование", PackIcon = "ChefHat" },
                new MenuItem() { Text = "Перспективное меню", PackIcon = "ContentPaste" },
                new MenuItem() { Text = "Документы", PackIcon = "FileMultipleOutline" },
                new MenuItem() { Text = "Лицензии", PackIcon = "License" },
                new MenuItem() { Text = "Настройки", PackIcon = "Cog" },
                new MenuItem() { Text = "Чат", PackIcon = "Chat" },
                new MenuItem() { Text = "Аутсорсинг", PackIcon = "Handshake" }
            };


            MenuItemSource = menuItem;
        }

    }

    interface IMenuItem
    {
        public string Text { get; set; }
        public string PackIcon { get; set; }
    }

    class MenuItem : IMenuItem
    {
        public string Text { get; set; }
        public string PackIcon { get; set; }
    }
}
