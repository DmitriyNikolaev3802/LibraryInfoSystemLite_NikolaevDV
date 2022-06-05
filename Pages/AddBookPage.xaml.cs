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
using LibraryInfoSystemLite_NikolaevDV.Pages;

namespace LibraryInfoSystemLite_NikolaevDV.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddBookPage.xaml
    /// </summary>
    public partial class AddBookPage : Page
    {
        private Book _book;
        public AddBookPage(Book book)
        {
            this._book = book;
            InitializeComponent();
            _book = book;
            cb_Annotation.ItemsSource = DB.db.Annotation.ToList();
            cb_Genre.ItemsSource = DB.db.Genre.ToList();
            cb_Author.ItemsSource = DB.db.Author.ToList();
            cb_Language.ItemsSource = DB.db.Language.ToList();
            cb_LanguageTrans.ItemsSource = DB.db.LanguageTranslation.ToList();
            cb_Publish.ItemsSource = DB.db.PublicType.ToList();
            cb_ReadyIssuance.ItemsSource = DB.db.ReadyIssuance.ToList();
            cb_PublishHouse.ItemsSource = DB.db.PublishHouse.ToList();
            DataContext = _book;
        }

        private void BtnSaveBook_Click(object sender, RoutedEventArgs e)
        {
            string text = null;

            if (String.IsNullOrEmpty(tb_NameBook.Text) || String.IsNullOrWhiteSpace(tb_NameBook.Text))
                text += "Введите название книги\n";
            if (String.IsNullOrEmpty(tb_DescBook.Text) || String.IsNullOrWhiteSpace(tb_DescBook.Text))
                text += "Введите описание книги\n";
            if (String.IsNullOrEmpty(tb_tome.Text) || String.IsNullOrWhiteSpace(tb_tome.Text))
                text += "Введите том в виде целого числа\n";
            if (String.IsNullOrEmpty(tb_tomequan.Text) || String.IsNullOrWhiteSpace(tb_tomequan.Text))
                text += "Введите количество томов в виде целого числа\n";
            if (String.IsNullOrEmpty(tb_Reaction.Text) || String.IsNullOrWhiteSpace(tb_Reaction.Text))
                text += "Введите название редакции\n";
            if (String.IsNullOrEmpty(tb_Year.Text) || String.IsNullOrWhiteSpace(tb_Year.Text))
                text += "Введите год в виде целого числа\n";
            if (String.IsNullOrEmpty(tb_quanity.Text) || String.IsNullOrWhiteSpace(tb_quanity.Text))
                text += "Введите количество в виде целого числа\n";
            if (String.IsNullOrEmpty(tb_Code.Text) || String.IsNullOrWhiteSpace(tb_Code.Text))
                text += "Введите код\n";

            if (text == null)
            {
                if (_book.BookID == 0) DB.db.Book.Add(_book);
                DB.db.SaveChanges();
                //MessageBoxResult addBook = MessageBox.Show("Книга успешно добавлена!", MessageBoxButton.OK, MessageBoxImage.Information);
                NavigationService.GoBack();
            }
            else
            {
                MessageBox.Show(text);
            }
        }

        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageBook(new Book()));
        }

        private void btn_DelBook_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Вы уверены, что хотите удалить эту книгу?", "Удаление книги", MessageBoxButton.YesNo, MessageBoxImage.Warning);
            if (result == MessageBoxResult.Yes)
            {
                DB.db.Book.Remove(_book);
                DB.db.SaveChanges();
                NavigationService.GoBack();
                
            }
        }
    }
}
