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
using WpfOptionFourApp.Context;
using WpfOptionFourApp.Model;

namespace WpfOptionFourApp.Views.Pages.AdminPages
{
    /// <summary>
    /// Логика взаимодействия для ManagerDataViewPage.xaml
    /// </summary>
    public partial class ManagerDataViewPage : Page
    {
        public static Role Role { get; set; }
        public static Manager Manager { get; set; }
        public ManagerDataViewPage(Manager manager)
        {
            InitializeComponent();
            Manager = manager;
            this.DataContext = this;
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            ManagerData.ItemsSource = Data.bd.Manager.ToList();
        }
        // Дообавление
        private void AddManagerBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ManagerDataActionPage(new Manager()));
        }
        // Редактирование
        private void EditManagerBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var selectedItemManager = ManagerData.SelectedItem as Manager;
                if (selectedItemManager != null)
                    NavigationService.Navigate(new ManagerDataActionPage(selectedItemManager));
                else
                    throw new Exception("Пожалуйста, выберите объект из списка!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
        //Удаление
        private void DeleteManagerBtn_Click(object sender, RoutedEventArgs e)
        {
            var selectedItemManager = ManagerData.SelectedItem as Manager;
            if (selectedItemManager != null)
            {
                if (MessageBox.Show("Вы дествительно хотите удалить данные?", "Данные будут удалены навсегда!", MessageBoxButton.OKCancel, MessageBoxImage.Warning) == MessageBoxResult.OK)
                {
                    Data.bd.Manager.Remove(selectedItemManager);
                    Data.bd.SaveChanges();
                    MessageBox.Show("Данные успешно удалены", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                    Page_Loaded(null, null);
                }

            }
            else
                throw new Exception("Пожалуйста, выберите объект из списка!");
        }
        // Поиск
        private void ManagerSearchTxb_SelectionChanged(object sender, RoutedEventArgs e)
        {
            var list = Data.bd.Manager.Where(item => item.FirstName.Contains(ManagerSearchTxb.Text) ||
            item.LastName.Contains(ManagerSearchTxb.Text) || item.Phone.Contains(ManagerSearchTxb.Text)).ToList();

            if (list.Any())
            {
                ManagerData.Visibility = Visibility.Visible;
                NoResult.Visibility = Visibility.Collapsed;
                ManagerData.ItemsSource = list;
            }
            else
            {
                ManagerData.Visibility = Visibility.Collapsed;
                NoResult.Visibility = Visibility.Visible;
            }
        }
    }
}
