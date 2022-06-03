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
using LibraryInfoSystemLite_NikolaevDV;

namespace LibraryInfoSystemLite_NikolaevDV.Pages
{
    /// <summary>
    /// Логика взаимодействия для AdministationMenu.xaml
    /// </summary>
    public partial class AdministationMenu : Page
    {
        public AdministationMenu()
        {
            InitializeComponent();
        }

        private void btn_openuser_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new UserPage(new User()));
        }

        private void btn_openbook_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageBook(new Book()));
        }

        private void btn_SetBookToUser_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new SetBookToUserPage());
        }
    }
}
