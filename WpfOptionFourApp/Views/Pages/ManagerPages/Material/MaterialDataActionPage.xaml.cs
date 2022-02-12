using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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

namespace WpfOptionFourApp.Views.Pages.ManagerPages.Material
{
    /// <summary>
    /// Логика взаимодействия для MaterialDataActionPage.xaml
    /// </summary>
    public partial class MaterialDataActionPage : Page
    {
        public List<MaterialType> MaterialTypes { get; set; }
        public List<Unit> Units { get; set; }
        public Materials Materials { get; set; }
        public MaterialDataActionPage(Materials materials)
        {
            InitializeComponent();
            MaterialTypes = Data.bd.MaterialType.ToList();
            Units = Data.bd.Unit.ToList();
            Materials = materials;
            this.DataContext = this;
        }

        private void SelectImageBtn_Click(object sender, RoutedEventArgs e)
        {
            file.Filter = "Image (*.jpg;*.jpeg;*.png;) |  *.jpg; *.jpeg; *.png";
            if (file.ShowDialog() == true)
            {
                BitmapImage image = new BitmapImage(new Uri(file.FileName));
                Img.Source = image;
            }
        }

        OpenFileDialog file = new OpenFileDialog();

        private void MaterialDataSave_Click(object sender, RoutedEventArgs e)
        {

            try
            {
                if (Materials.ID == 0)
                {
                    Data.bd.Materials.Add(Materials);
                }
                File.Copy(file.FileName, $"materialsphoto\\{System.IO.Path.GetFileName(file.FileName).Trim()}", true);
                Materials.GetPhoto = "\\materialsphoto\\" + System.IO.Path.GetFileName(file.FileName);
                Data.bd.SaveChanges();
                MessageBox.Show("Данные сохранены", "Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
                NavigationService.GoBack();

            }
            catch
            {
                MessageBox.Show("Пожалуйста, выберите картинку!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }
    }
}
