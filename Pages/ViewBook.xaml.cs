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
    /// Логика взаимодействия для ViewBook.xaml
    /// </summary>
    public partial class ViewBook : Page
    {
        private Book _book;
        public ViewBook(Book book)
        {
            InitializeComponent();
            _book = book;
            lb_Book.ItemsSource = DB.db.Book.ToList();
            GenreFilterList();
            AuthorFilterList();
            ShowLbElements();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            DB.db.ChangeTracker.Entries().ToList().ForEach(x => x.Reload());
            ShowLbElements();
        }

        private void ShowLbElements()
        {
            List<Book> books = GetBook();
            lb_Book.ItemsSource = books;
        }

        private void tb_Finder_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<Book> books = GetBook();
            lb_Book.ItemsSource = books;
        }

        private List<Book> GetBook()
        {
            List<Book> books = DB.db.Book.ToList();
            if (!String.IsNullOrEmpty(tb_Finder.Text) && !String.IsNullOrWhiteSpace(tb_Finder.Text))
                books = FindBook(books);
            if (cb_Genre.SelectedIndex > 0)
                books = FiltGenre(books);
            if (cb_Author.SelectedIndex > 0)
                books = FiltAuthor(books);
            return books;
        }

        private List<Book> FiltGenre(List<Book> books)
        {   
            string genre = cb_Genre.SelectedItem.ToString();
            books = books.Where(p => p.Genre1.Genre1 == genre).ToList();

            return books;
        }

        private List<Book> FiltAuthor(List<Book> books)
        {
            string author = cb_Author.SelectedItem.ToString();
            books = books.Where(p => p.Author1.FIO_Author == author).ToList();

            return books;
        }


        private List<Book> FindBook(List<Book> books)
        {
            books = books.Where(p =>
                p.NameBook.ToLower().Contains(tb_Finder.Text.ToLower()) ||
                p.Redaction.ToLower().Contains(tb_Finder.Text.ToLower()) ||
                p.BookCode.ToLower().Contains(tb_Finder.Text.ToLower())).ToList();

            return books;
        }


        private void GenreFilterList()
        {
            cb_Genre.Items.Add("Все жанры");

            foreach (var genre in DB.db.Genre)
                cb_Genre.Items.Add(genre);

            cb_Genre.SelectedIndex = 0;
        }

        private void AuthorFilterList()
        {
            cb_Author.Items.Add("Все авторы");

            foreach (var author in DB.db.Author)
                cb_Author.Items.Add(author);

            cb_Author.SelectedIndex = 0;
        }

        private void cb_Genre_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ShowLbElements();
        }

        private void cb_Author_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ShowLbElements();
        }

        private void btn_Choice_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(messageBoxText: "Вы запросили книгу, поздравляем! Для её получения обратитесь в библиотеку в любое время.");   
        }
    }
}
