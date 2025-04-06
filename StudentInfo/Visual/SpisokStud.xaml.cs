using StudentInfo.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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

namespace StudentInfo.Visual
{
    /// <summary>
    /// Логика взаимодействия для SpisokStud.xaml
    /// </summary>
    public partial class SpisokStud : Page
    {   public static List<Student> students { get; set; }
        public static List<Gruppa> gruppa { get; set; }
        public SpisokStud()
        {
            InitializeComponent();
            students = new List<Student>(DBClass.connect.Student.ToList());
            InfoStud.ItemsSource = students;
            gruppa = new List<Gruppa>(DBClass.connect.Gruppa.ToList());
            gruppa.Insert(0, new Gruppa() { IdGr = -1, NameGr = "Вывести все группы" });
            this.DataContext = this;
        }
 

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            var sudenti = InfoStud.SelectedItem as Student;
            if (sudenti != null)
            {
                sudenti.isDelete = true;
                DBClass.connect.SaveChanges();
                MessageBox.Show("Удалился");

            }

            else
            {
                MessageBox.Show("Выберите элемент для удаления.");
            }
            InfoStud.ItemsSource = students;
        }

        private void DobavlStud_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new DobavPage());
        }

        private void cmbSort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var a = cmbSort.SelectedItem as Gruppa;
            if (a.IdGr != -1)
            {
                InfoStud.ItemsSource = students.Where(i => i.IdGr == a.IdGr).ToList();
            }
            else
            {
                InfoStud.ItemsSource = students.ToList();
            }
        }
    }
}
