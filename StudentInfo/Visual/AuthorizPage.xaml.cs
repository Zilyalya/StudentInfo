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
using StudentInfo.DB;
using StudentInfo.Visual;
using System.IO;
using System.Net.Sockets;
using System.Configuration;

namespace StudentInfo.Visual
{
    /// <summary>
    /// Логика взаимодействия для AuthorizPage.xaml
    /// </summary>
    public partial class AuthorizPage : Page
    {
        public AuthorizPage()
        {
            InitializeComponent();
        }

        private void BtnAuthoriz_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AuthorizPage());
            string login = TbLogin.Text.Trim();
            string password = TbPassword.Password.Trim();
            var user = new List<User>(DBClass.connect.User.ToList());
            User users = user.FirstOrDefault(i => i.Login.ToString() == login && i.Parol == password);
            if (user != null && login == "12567" || login == "80475")
            {
                NavigationService.Navigate(new SpisokStud());
            }

            else      
            { 
                MessageBox.Show("Неверный пароль или логин");  
            }

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new SpisokStud());
        }
    }
}
