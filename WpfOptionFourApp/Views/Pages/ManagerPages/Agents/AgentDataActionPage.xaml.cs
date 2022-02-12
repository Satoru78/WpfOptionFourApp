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
using Microsoft.Win32;
using System.IO;

namespace WpfOptionFourApp.Views.Pages.ManagerPages
{
    /// <summary>
    /// Логика взаимодействия для AgentDataActionPage.xaml
    /// </summary>
    public partial class AgentDataActionPage : Page
    {

        public List<PointsOfSales> PointsOfSales { get; set; }
        public List<Priority> Priorities { get; set; }
        public List<Role> Roles { get; set; }
        public List<AgentType> AgentTypes { get; set; }
        public Agent Agent { get; set; }
        public AgentDataActionPage(Agent agent)
        {
            InitializeComponent();
            AgentTypes = Data.bd.AgentType.ToList();
            Roles = Data.bd.Role.ToList();
            PointsOfSales = Data.bd.PointsOfSales.ToList();
            Priorities = Data.bd.Priority.ToList();
            Agent = agent;
            this.DataContext = this;

        }

        private void AgentDataSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (Agent.ID == 0)
                {
                    Data.bd.Agent.Add(Agent);
                }
                File.Copy(file.FileName, $"agentslogotype\\{System.IO.Path.GetFileName(file.FileName).Trim()}", true);
                Agent.GetLogotype = "\\agentslogotype\\" + System.IO.Path.GetFileName(file.FileName);
                Data.bd.SaveChanges();
                MessageBox.Show("Данные сохранены", "Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
                NavigationService.GoBack();

            }
            catch
            {
                MessageBox.Show("Пожалуйста, выберите картинку!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }
            OpenFileDialog file = new OpenFileDialog();

        private void SelectLogotype_Click(object sender, RoutedEventArgs e)
        {
            file.Filter = "Image (*.jpg;*.jpeg;*.png;) |  *.jpg; *.jpeg; *.png";
            if (file.ShowDialog() == true)
            {
                BitmapImage image = new BitmapImage(new Uri(file.FileName));
                Img.Source = image;
            }
        }
    }
}
