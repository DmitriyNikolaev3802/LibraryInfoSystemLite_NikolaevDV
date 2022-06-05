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
using System.Windows.Shapes;
using LibraryInfoSystemLite_NikolaevDV.Pages;

namespace LibraryInfoSystemLite_NikolaevDV
{
    /// <summary>
    /// Логика взаимодействия для WindowForPages.xaml
    /// </summary>
    public partial class WindowForPages : Window
    {
        User user;
        public WindowForPages(User user)
        {
            InitializeComponent();
            this.user = user;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            switch (user.RoleID)
            {
                case 1:
                    fMain.Navigate(new ViewBook(new Book()));
                    break;
                case 2:
                    fMain.Navigate(new AdministationMenu());
                    break;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow authWin = new MainWindow();
            authWin.Show();
            Close();
        }

        private void Button_Profile_Click(object sender, RoutedEventArgs e)
        {
            fMain.Navigate(new UserProfile());
        }
    }
}
