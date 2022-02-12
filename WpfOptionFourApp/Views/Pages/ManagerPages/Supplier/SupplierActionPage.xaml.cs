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
    /// Логика взаимодействия для SupplierActionPage.xaml
    /// </summary>
    public partial class SupplierActionPage : Page
    {
        public List<SuppliersType> SuppliersTypes { get; set; }
        public Supplier Supplier { get; set; }
        public SupplierActionPage(Supplier supplier)
        {
            InitializeComponent();
            SuppliersTypes = Data.bd.SuppliersType.ToList();
            Supplier = supplier;
            this.DataContext = this;
        }

        private void SupplierDataSave_Click(object sender, RoutedEventArgs e)
        {
            if (Supplier.ID == 0)
            {
                Data.bd.Supplier.Add(Supplier);
            }
            Data.bd.SaveChanges();
            MessageBox.Show("Данные сохранены", "Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
            NavigationService.GoBack();
        }
    }
}
