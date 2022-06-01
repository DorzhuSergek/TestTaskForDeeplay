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
    /// Логика взаимодействия для EmoloyeesPage.xaml
    /// </summary>
    public partial class EmoloyeesPage : Page
    {
        public EmoloyeesPage()
        {
            InitializeComponent();
            DGrid.ItemsSource = StaffEntities.GetContext().Employees.ToList();
        }

        private void addEmployess(object sender, RoutedEventArgs e)
        {
            Manager._frame.Navigate(new AddEmployees((sender as Button).DataContext as Employees));
        }

        private void deleteEmployees(object sender, RoutedEventArgs e)
        {
            var employeesforRemoving = DGrid.SelectedItems.Cast<Employees>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие {employeesforRemoving.Count()} элементов?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    _ = StaffEntities.GetContext().Employees.RemoveRange(employeesforRemoving);
                    _ = StaffEntities.GetContext().SaveChanges();
                    _ = MessageBox.Show("Данные удалены");

                    DGrid.ItemsSource = StaffEntities.GetContext().Employees.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }
      

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                StaffEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGrid.ItemsSource = StaffEntities.GetContext().Employees.ToList();
            }
        }

        private void BtnEdit_MouseDown(object sender, MouseButtonEventArgs e)
        {
            Manager._frame.Navigate(new AddEmployees((sender as Image).DataContext as Employees));
        }
    }
}
