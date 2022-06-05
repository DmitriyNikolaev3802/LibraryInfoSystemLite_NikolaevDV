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
using System.Data.Entity;
using LibraryInfoSystemLite_NikolaevDV.Class;
using LibraryInfoSystemLite_NikolaevDV.Pages;


namespace LibraryInfoSystemLite_NikolaevDV
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
       public MainWindow()
        {   
            InitializeComponent();
           
        }


        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            User user = DB.db.User.FirstOrDefault(u => u.Login == tbLogin.Text && u.Password == tbPassword.Text);
            
            if (user != null)
            {
                CurrentUser.User = user;
                WindowForPages mainwin = new WindowForPages(user);
                mainwin.Show();
                Close();
            }
            else MessageBox.Show("Неправильный логин или пароль!", "Внимание", MessageBoxButton.OK, MessageBoxImage.Error);
        }
    }
}
