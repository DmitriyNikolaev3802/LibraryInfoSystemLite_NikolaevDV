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
    /// Логика взаимодействия для AddUserPage.xaml
    /// </summary>
    public partial class AddUserPage : Page
    {
        private User _user;
        public AddUserPage(User user)
        {
            this._user = user;
            InitializeComponent();
            _user = user;
            cb_Role.ItemsSource = DB.db.Role.ToList();
            cb_Appeals.ItemsSource = DB.db.Appeals.ToList();
            DataContext = _user;
        }

        private void btn_SaveUser_Click(object sender, RoutedEventArgs e)
        {
            string text = null;

            if (String.IsNullOrEmpty(tb_Surname.Text) || String.IsNullOrWhiteSpace(tb_Surname.Text))
                text += "Введите фамилию\n";
            if (String.IsNullOrEmpty(tb_Name.Text) || String.IsNullOrWhiteSpace(tb_Name.Text))
                text += "Введите имя\n";
            if (String.IsNullOrEmpty(tb_MiddleName.Text) || String.IsNullOrWhiteSpace(tb_MiddleName.Text))
                text += "Введите отчество\n";
            if (String.IsNullOrEmpty(tb_Addrees.Text) || String.IsNullOrWhiteSpace(tb_Addrees.Text))
                text += "Введите адрес\n";
            if (String.IsNullOrEmpty(tb_Telephone.Text) || String.IsNullOrWhiteSpace(tb_Telephone.Text))
                text += "Введите телефон\n";
            if (String.IsNullOrEmpty(tb_Login.Text) || String.IsNullOrWhiteSpace(tb_Login.Text))
                text += "Введите логин\n";
            if (String.IsNullOrEmpty(tb_Password.Text) || String.IsNullOrWhiteSpace(tb_Password.Text))
                text += "Введите пароль\n";

            if (text == null)
            {
                if (_user.UserID == 0) DB.db.User.Add(_user);
                DB.db.SaveChanges();
                NavigationService.GoBack();
            }
            else
            {
                MessageBox.Show(text);
            }

            
        }
        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new UserPage(new User()));
        }

        private void btn_DelUser_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Вы уверены, что хотите удалить этого пользователя?", "Удаление пользователя", MessageBoxButton.YesNo, MessageBoxImage.Warning);
            if (result == MessageBoxResult.Yes)
            {
                DB.db.User.Remove(_user);
                DB.db.SaveChanges();
                NavigationService.GoBack();
            }
        }
    }
}
