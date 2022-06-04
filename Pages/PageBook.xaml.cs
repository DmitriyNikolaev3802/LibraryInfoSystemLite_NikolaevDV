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
    /// Логика взаимодействия для PageBook.xaml
    /// </summary>
    public partial class PageBook : Page
    {
        
        public PageBook(Book book)
        {
            InitializeComponent();
            lb_Book.ItemsSource = DB.db.Book.ToList();
        }

        private void btn_back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AdministationMenu());
        }

        private void btn_AddBook_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddBookPage(new Book()));
        }

        private void btn_ChangeBook_Click(object sender, RoutedEventArgs e)
        {
            Book book = lb_Book.SelectedItem as Book;
            NavigationService.Navigate(new ChangeBookPage());
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            lb_Book.ItemsSource = DB.db.Book.ToList();
        }

        private void lb_Book_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //lb_Book.SelectedItem != null ? true : false;
        }

        private void btn_DelBook_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Вы уверены, что хотите удалить эту книгу?", "Внимание!", MessageBoxButton.YesNo, MessageBoxImage.Warning);
            if (result == MessageBoxResult.Yes)
            {
                //DB.db.Book.Remove(_product);
                DB.db.SaveChanges();
            }
        }

    }
}
