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
    /// Логика взаимодействия для UserProfile.xaml
    /// </summary>
    public partial class UserProfile : Page
    {
        private User _user;
        public UserProfile(User user)
        {
            this._user = user;
            InitializeComponent();
            _user = user;
            DataContext = _user;
        }

        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
