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
    /// Логика взаимодействия для SetBookToUserPage.xaml
    /// </summary>
    public partial class SetBookToUserPage : Page
    {
        private User _user;
        private Book _book;

        public SetBookToUserPage(Book book)
        {
            InitializeComponent();
            //this._user = user;
            this._book = book;
            cb_SetUser.ItemsSource = DB.db.User.ToList();
            cb_SetBook.ItemsSource = DB.db.Book.ToList();
        }

        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AdministationMenu());
        }

        private void btn_AddBookToUser_Click(object sender, RoutedEventArgs e)
        {
            //if (_user.UserID == ) DB.db.User.Add(_book);
            //DB.db.SaveChanges();
        }
    }
}
