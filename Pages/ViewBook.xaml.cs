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
        public ViewBook()
        {
            InitializeComponent();
        }

        private void lb_Book_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DB.db.Book.ToList();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void ShowLbElements()
        {
            List<Book> books = GetBook();
            lb_Book.ItemsSource = books;
            //ShowCountFindedProducts(books);
        }

        

        private List<Book> FindProducts(List<Book> books)
        {
            books = books.Where(p =>
                p.NameBook.ToLower().Contains(tb_Finder.Text.ToLower()) ||
                p.Description.ToLower().Contains(tb_Finder.Text.ToLower())).ToList();

            return books;
        }

        private List<Book> Genre(List<Book> books)
        {
            switch (cb_Genre.SelectedIndex)
            {
               //case 1: products = products.OrderBy(p => p.ProductCost).ToList(); break;
                //case 2: products = products.OrderByDescending(p => p.ProductCost).ToList(); break;
            }

            return books;
        }

        private List<Book> Author(List<Book> books)
        {
            string Genre = cb_Author.SelectedItem.ToString();
            //products = products.Where(p => p.Supplier.Name == supplier).ToList();

            return books;
        }


        private List<Book> GetBook()
        {
            List<Book> books = DB.db.Book.ToList();

            if (!String.IsNullOrEmpty(tb_Finder.Text) && !String.IsNullOrWhiteSpace(tb_Finder.Text))
                books = FindProducts(books);

            if (cb_Genre.SelectedIndex > 0)
                books = Genre(books);

            if (cb_Author.SelectedIndex > 0)
                books = Author(books);

            return books;
        }
    }
}
