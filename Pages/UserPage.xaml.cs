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
using LibraryInfoSystemLite_NikolaevDV.Class;

namespace LibraryInfoSystemLite_NikolaevDV.Pages
{
    /// <summary>
    /// Логика взаимодействия для UserPage.xaml
    /// </summary>
    public partial class UserPage : Page
    {
        private User _user;
        public UserPage(User user)
        {
            InitializeComponent();
            _user = user;
            lb_User.ItemsSource = DB.db.User.ToList();
        }

        private void btn_AddUser_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddUserPage(new User()));
        }

        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AdministationMenu());
        }

        private void btn_ChangeUser_Click(object sender, RoutedEventArgs e)
        {
            User user = lb_User.SelectedItem as User;
            if (user != null)
                NavigationService.Navigate(new AddUserPage(user));
        }

        private void btn_DelUser_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Вы уверены, что хотите удалить этого пользователя?", "Внимание!", MessageBoxButton.YesNo, MessageBoxImage.Warning);
            if (result == MessageBoxResult.Yes)
            {
                //DB.db.Book.Remove(_product);
                DB.db.SaveChanges();
            }
        }

        private void tb_User_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<User> users = GetUser();
            lb_User.ItemsSource = users;
        }

        private List<User> GetUser()
        {
            List<User> users = DB.db.User.ToList();
            if (!String.IsNullOrEmpty(tb_User.Text) && !String.IsNullOrWhiteSpace(tb_User.Text))
                users = FindUser(users);
            return users;
        }

        private List<User> FindUser(List<User> users)
        {
            users = users.Where(p =>
                p.Surname.ToLower().Contains(tb_User.Text.ToLower()) ||
                p.Name.ToLower().Contains(tb_User.Text.ToLower()) ||
                p.MiddleName.ToLower().Contains(tb_User.Text.ToLower())).ToList();

            return users;
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            DB.db.ChangeTracker.Entries().ToList().ForEach(x => x.Reload());
        }
    }
}
