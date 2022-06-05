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
        private Book _book;
        
        public PageBook(Book book)
        {
            InitializeComponent();
            _book = book;
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
            if(book != null)
                NavigationService.Navigate(new AddBookPage(book));
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            lb_Book.ItemsSource = DB.db.Book.ToList();
        }

        private void lb_Book_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //lb_Book.SelectedItem != null ? true : false;
        }

        private void tb_FindBook_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<Book> books = GetBook();
            lb_Book.ItemsSource = books;
        }

        private List<Book> GetBook()
        {
            List<Book> books = DB.db.Book.ToList();
            if (!String.IsNullOrEmpty(tb_FindBook.Text) && !String.IsNullOrWhiteSpace(tb_FindBook.Text))
                books = FindBook(books);
            return books;
        }

        private List<Book> FindBook(List<Book> books)
        {
            books = books.Where(p =>
                p.NameBook.ToLower().Contains(tb_FindBook.Text.ToLower()) ||
                p.Redaction.ToLower().Contains(tb_FindBook.Text.ToLower()) ||
                p.BookCode.ToLower().Contains(tb_FindBook.Text.ToLower())).ToList();
            return books;
        }
    }
}
