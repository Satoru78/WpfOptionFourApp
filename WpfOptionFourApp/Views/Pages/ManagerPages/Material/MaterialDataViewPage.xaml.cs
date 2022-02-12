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
using WpfOptionFourApp.Model;
using WpfOptionFourApp.Context;

namespace WpfOptionFourApp.Views.Pages.ManagerPages.Material
{
    /// <summary>
    /// Логика взаимодействия для MaterialDataViewPage.xaml
    /// </summary>
    public partial class MaterialDataViewPage : Page
    {
        public Unit Unit { get; set; }
        public MaterialType MaterialType { get; set; }
        public List<Materials> Materials { get; set; }
        public MaterialDataViewPage(Materials materials)
        {
            InitializeComponent();
            this.DataContext = this;
        }

        private void MaterialSearchTxb_SelectionChanged(object sender, RoutedEventArgs e)
        {
            var data = Data.bd.Materials.Where(item => item.Title.Contains(MaterialSearchTxb.Text)
            || item.Cost.ToString().Contains(MaterialSearchTxb.Text)).ToList();
            if (data.Any())
            {
                MaterialListView.Visibility = Visibility.Visible;
                NoMaterials.Visibility = Visibility.Collapsed;
                MaterialListView.ItemsSource = data;
            }
            else
            {
                MaterialListView.Visibility = Visibility.Collapsed;
                NoMaterials.Visibility = Visibility.Visible;
            }
        }
        private void SearchType(string type = "", string search = "")
        {
            var materials = Data.bd.Materials.ToList();
            if (!string.IsNullOrEmpty(type) && !string.IsNullOrEmpty(type))
            {
                if (type == "Резина")
                {
                    materials = materials.Where(item => item.MaterialType.Title == "Резина").ToList();
                }
                if (type == "Краска")
                {
                    materials = materials.Where(item => item.MaterialType.Title == "Краска").ToList();
                }
                if (type == "Силикон")
                {
                    materials = materials.Where(item => item.MaterialType.Title == "Силикон").ToList();
                }
                if (type == "Все")
                {
                    materials = materials.ToList();
                }
            }
            MaterialListView.ItemsSource = materials;
        }

        private void MaterialTypeCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SearchType((MaterialTypeCmb.SelectedItem as ComboBoxItem).Content.ToString(), MaterialTypeCmb.Text);
        }

        private void MaterialBackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void MaterialAddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new MaterialDataActionPage(new Model.Materials()));
        }

        private void MaterialDeleteBtn_Click(object sender, RoutedEventArgs e)
        {
            var selectedItemMaterials = MaterialListView.SelectedItem as Materials;
            if (selectedItemMaterials != null)
            {
                if (MessageBox.Show("Вы дествительно хотите удалить данные?", "Данные будут удалены навсегда!", MessageBoxButton.OKCancel, MessageBoxImage.Warning) == MessageBoxResult.OK)
                {
                    Data.bd.Materials.Remove(selectedItemMaterials);
                    Data.bd.SaveChanges();
                }
                    MessageBox.Show("Данные успешно удалены", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                    Page_Loaded(null, null);

            }
            else
                throw new Exception("Пожалуйста, выберите объект из списка!");
        }

        private void MaterialEditBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var selectedItemMaterials = MaterialListView.SelectedItem as Materials;
                if (selectedItemMaterials != null)
                    NavigationService.Navigate(new MaterialDataActionPage(selectedItemMaterials));
                else
                    throw new Exception("Пожалуйста, выберите объект из списка!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Materials = Data.bd.Materials.ToList();
            MaterialListView.ItemsSource = Materials;
        }
    }
}
