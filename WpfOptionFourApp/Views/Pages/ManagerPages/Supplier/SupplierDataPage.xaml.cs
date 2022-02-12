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

namespace WpfOptionFourApp.Views.Pages.ManagerPages
{
    /// <summary>
    /// Логика взаимодействия для SupplierDataPage.xaml
    /// </summary>
    public partial class SupplierDataPage : Page
    {
        public SuppliersType SuppliersType { get; set; }
        public Supplier Supplier { get; set; }
        public SupplierDataPage(Supplier supplier)
        {
            InitializeComponent();
            Supplier = supplier;
            this.DataContext = this;
        }

        private void SupplierTypeCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SearchType((SupplierTypeCmb.SelectedItem as ComboBoxItem).Content.ToString(), SupplierTypeCmb.Text);
        }

        private void SupplierSearchTxb_SelectionChanged(object sender, RoutedEventArgs e)
        {
            var data = Data.bd. Supplier.Where(item => item.Title.Contains(SupplierSearchTxb.Text)
            || item.INN.ToString().Contains(SupplierSearchTxb.Text)
            || item.QualityRating.ToString().Contains(SupplierSearchTxb.Text)
            || item.StartDate.ToString().Contains(SupplierSearchTxb.Text)).ToList();
            if (data.Any())
            {
                SupplierData.Visibility = Visibility.Visible;
                NoSuppliers.Visibility = Visibility.Collapsed;
                SupplierData.ItemsSource = data;
            }
            else
            {
                SupplierData.Visibility = Visibility.Collapsed;
                NoSuppliers.Visibility = Visibility.Visible;
            }
        }
        private void SearchType(string type = "", string search = "")
        {
            var suppliers = Data.bd.Supplier.ToList();
            if (!string.IsNullOrEmpty(type) && !string.IsNullOrEmpty(type))
            {
                if (type == "ОАО")
                {
                    suppliers = suppliers.Where(item => item.SuppliersType.Type == "ОАО").ToList();
                }
                if (type == "МКК")
                {
                    suppliers = suppliers.Where(item => item.SuppliersType.Type == "МКК").ToList();
                }
                if (type == "ООО")
                {
                    suppliers = suppliers.Where(item => item.SuppliersType.Type == "ООО").ToList();
                }
                if (type == "МФО")
                {
                    suppliers = suppliers.Where(item => item.SuppliersType.Type == "МФО").ToList();
                }
                if (type == "ПАО")
                {
                    suppliers = suppliers.Where(item => item.SuppliersType.Type == "ПАО").ToList();
                }
                if (type == "Все")
                {
                    suppliers = suppliers.ToList();
                }
            }
            SupplierData.ItemsSource = suppliers;
        }
        private void SupplierAddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new SupplierActionPage(Supplier));
        }

        private void SupplierEditBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var selectedItemSupplier = SupplierData.SelectedItem as Supplier;
                if (selectedItemSupplier != null)
                    NavigationService.Navigate(new SupplierActionPage(selectedItemSupplier));
                else
                    throw new Exception("Пожалуйста, выберите объект из списка!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void SupplierDeleteBtn_Click(object sender, RoutedEventArgs e)
        {
            var selectedItemSupplier = SupplierData.SelectedItem as Supplier;
            if (selectedItemSupplier != null)
            {
                if (MessageBox.Show("Вы дествительно хотите удалить данные?", "Данные будут удалены навсегда!", MessageBoxButton.OKCancel, MessageBoxImage.Warning) == MessageBoxResult.OK)
                {
                    Data.bd.Supplier.Remove(selectedItemSupplier);
                    Data.bd.SaveChanges();
                    MessageBox.Show("Данные успешно удалены", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                    Page_Loaded(null, null);
                }

            }
            else
                throw new Exception("Пожалуйста, выберите объект из списка!");
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            SupplierData.ItemsSource = Data.bd.Supplier.ToList();
        }

        private void SupplierBackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
