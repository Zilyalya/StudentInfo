using StudentInfo.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
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

namespace StudentInfo.Visual
{
    /// <summary>
    /// Логика взаимодействия для Page1.xaml
    /// </summary>
    public partial class DobavPage : Page
    {
        public DobavPage()
        {
            InitializeComponent();

        }

        private void Dobavlenie_Click(object sender, RoutedEventArgs e)
        {
            if (txbIDStud.Text != "" && txbFam.Text != "" && txbName.Text != "" && txbOtchestvo.Text != "" && txbGr.Text != "" && txbDR.Text != "" && txbAdres.Text != "")
            {
                Student studentInfo = new Student()
                {
                    IdStudent = Convert.ToInt32(txbIDStud.Text),
                    IdGr = Convert.ToInt32(txbGr.Text),
                    Name = txbName.Text,
                    Fam = txbFam.Text,
                    Otchestvo = txbOtchestvo.Text,
                    DR = Convert.ToDateTime(txbDR.Text),
                    Adres = txbAdres.Text,
                    isDelete = false,
                };
                DBClass.connect.Student.Add(studentInfo);
                DBClass.connect.SaveChanges();
                MessageBox.Show("Добавление прошло успешно");
                NavigationService.Navigate(new DobavPage());
            }
            else
            {
                MessageBox.Show("Не все поля заполнены");
            }
        }

        private void Nazad_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new SpisokStud());
        }
    }
}
