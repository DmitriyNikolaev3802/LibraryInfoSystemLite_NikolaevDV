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
        private Book _book;
        private User _user;

        public SetBookToUserPage(Book book)
        {
            InitializeComponent();
            this._book = book;
            cb_SetUser.ItemsSource = DB.db.User.ToList();
            cb_SetBook.ItemsSource = DB.db.Book.ToList();
            UserNoBookList();
            BookList();
            DataContext = this;
        }

        private void UserNoBookList()
        {
            foreach (var user in DB.db.User)
            {
                if (user.Book1 == null)
                {
                    cb_SetUser.Items.Add(user);
                }
            }   
            cb_SetUser.SelectedIndex = 0;
        }

        private void BookList()
        {
            foreach (var book in DB.db.Book)
                cb_SetBook.Items.Add(book);
            cb_SetBook.SelectedIndex = 0;
        }

        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AdministationMenu());
        }

        private void btn_AddBookToUser_Click(object sender, RoutedEventArgs e)
        {
            //if (_book.BookID == 0) DB.db.User.Add();
            DB.db.SaveChanges();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            UserNoBookList();
        }
    }
}
