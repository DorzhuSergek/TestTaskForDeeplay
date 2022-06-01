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

namespace TestTaskDeeplay
{
    /// <summary>
    /// Логика взаимодействия для AddEmployees.xaml
    /// </summary>
    public partial class AddEmployees : Page
    {
        private Employees _currentEmployees = new Employees();
        public AddEmployees(Employees seletectedEmployes)
        {
            InitializeComponent();
            if (seletectedEmployes != null)
                _currentEmployees = seletectedEmployes;
            DataContext = _currentEmployees;    
            List<string> gender = new List<string>();
            gender.Add("Мужской");
            gender.Add("Женский");
            cmbGender.ItemsSource = gender;
            cmbPosition.ItemsSource = StaffEntities.GetContext().Position.ToList();

            
          
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(surname.Text) && !string.IsNullOrWhiteSpace(date.Text) && (cmbGender.SelectedItem != null) && cmbPosition.SelectedItem != null)
            {
                if (_currentEmployees.Id == 0)
                {
                    StaffEntities.GetContext().Employees.Add(_currentEmployees);
                }
                try
                {
                    _ = StaffEntities.GetContext().SaveChanges();
                    _ = MessageBox.Show("Информация сохранена");
                }
                catch (Exception ex)
                {
                    _ = MessageBox.Show(ex.Message.ToString());
                }
            }
            else
            {
                MessageBox.Show("Заполните поля");
            }
            _ = Manager._frame.Navigate(new EmoloyeesPage());
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            _ = Manager._frame.Navigate(new EmoloyeesPage());
        }
    }
}
