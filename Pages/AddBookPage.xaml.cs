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
    /// Логика взаимодействия для AddBookPage.xaml
    /// </summary>
    public partial class AddBookPage : Page
    {
        Book book;
        public AddBookPage(Book book)
        {
            InitializeComponent();
            SetPageSettings();
            DataContext = book;
        }
        private void SetPageSettings()
        {
            cb_Annotation.ItemsSource = DB.db.Annotation.ToList();
            cb_Genre.ItemsSource = DB.db.Genre.ToList();
            cb_Author.ItemsSource = DB.db.Author.ToList();
            cb_Language.ItemsSource = DB.db.Language.ToList();
            cb_LanguageTrans.ItemsSource = DB.db.LanguageTranslation.ToList();
            cb_Publish.ItemsSource = DB.db.PublicType.ToList();
        }

        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageBook(new Book()));
        }
    }
}
