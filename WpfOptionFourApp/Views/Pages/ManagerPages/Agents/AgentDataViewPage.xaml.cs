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
    /// Логика взаимодействия для AgentDataViewPage.xaml
    /// </summary>
    public partial class AgentDataViewPage : Page
    {
        public PointsOfSales PointsOfSales { get; set; }
        public Priority Priority { get; set; }
        public AgentType AgentType { get; set; }
        public Role Role { get; set; }
        public Agent Agent { get; set; }
        public AgentDataViewPage(Agent agent)
        {
            InitializeComponent();
            Agent = agent;
            this.DataContext = this;
        }

        private void AgentAddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AgentDataActionPage(new Agent()));
        }

        private void AgentEditBtn_Click(object sender, RoutedEventArgs e)
        {
             try
             {
                var selectedItemAgent = AgentData.SelectedItem as Agent;
                if (selectedItemAgent != null)
                    NavigationService.Navigate(new AgentDataActionPage(selectedItemAgent));
                else
                    throw new Exception("Пожалуйста, выберите объект из списка!");
             }
            catch (Exception ex)
             {
                MessageBox.Show(ex.Message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
             }
        }

        private void AgentDeleteBtn_Click(object sender, RoutedEventArgs e)
        {
            var selectedItemAgent = AgentData.SelectedItem as Agent;
            if (selectedItemAgent != null)
            {
                if (MessageBox.Show("Вы дествительно хотите удалить данные?", "Данные будут удалены навсегда!", MessageBoxButton.OKCancel, MessageBoxImage.Warning) == MessageBoxResult.OK)
                {
                    Data.bd.Agent.Remove(selectedItemAgent);
                    Data.bd.SaveChanges();
                    MessageBox.Show("Данные успешно удалены", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                    Page_Loaded(null, null);
                }

            }
            else
                throw new Exception("Пожалуйста, выберите объект из списка!");
        }

        private void AgentSearchTxb_SelectionChanged(object sender, RoutedEventArgs e)
        {
            var data = Data.bd.Agent.Where(item => item.CompanyName.Contains(AgentSearchTxb.Text)
            || item.Adress.Contains(AgentSearchTxb.Text) || item.INN.ToString().Contains(AgentSearchTxb.Text)
            || item.KPP.ToString().Contains(AgentSearchTxb.Text) || item.FIODirector.Contains(AgentSearchTxb.Text)
            || item.Phone.ToString().Contains(AgentSearchTxb.Text) || item.Email.Contains(AgentSearchTxb.Text)).ToList();
            if (data.Any())
            {
                AgentData.Visibility = Visibility.Visible;
                NoAgents.Visibility = Visibility.Collapsed;
                AgentData.ItemsSource = data;
            }
            else
            {
                AgentData.Visibility = Visibility.Collapsed;
                NoAgents.Visibility = Visibility.Visible;
            }

        }
        private void SearchType(string type = "", string search = "")
        {
            var agents = Data.bd.Agent.ToList();
            if (!string.IsNullOrEmpty(type) && !string.IsNullOrEmpty(type))
            {
                if (type == "ОАО")
                {
                   agents = agents.Where(item => item.AgentType.Title == "ОАО").ToList();
                }
                if (type == "Самозанятый")
                {
                    agents = agents.Where(item => item.AgentType.Title == "Самозанятый").ToList();
                }
                if (type == "ОО")
                {
                    agents = agents.Where(item => item.AgentType.Title == "ОО").ToList();
                }           
                if (type == "Все")
                {
                    agents = agents.ToList();
                }
            }
            AgentData.ItemsSource = agents;
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            AgentData.ItemsSource = Data.bd.Agent.ToList();
        }

        private void AgentTypeCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SearchType((AgentTypeCmb.SelectedItem as ComboBoxItem).Content.ToString(), AgentSearchTxb.Text);
        }

        private void AgentBackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
