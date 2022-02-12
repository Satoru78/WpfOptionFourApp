﻿using System;
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
using WpfOptionFourApp.Views.Pages.ManagerPages.Material;

namespace WpfOptionFourApp.Views.Pages.ManagerPages
{
    /// <summary>
    /// Логика взаимодействия для ManagerMainPage.xaml
    /// </summary>
    public partial class ManagerMainPage : Page
    {
        public ManagerMainPage()
        {
            InitializeComponent();
        }

        private void AgentsListBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AgentDataViewPage(new Model.Agent()));
        }

        private void SupplierDataBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new SupplierDataPage(new Model.Supplier()));
        }

        private void ApplicationBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void MaterialBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new MaterialDataViewPage(new Model.Materials()));
        }
    }
}
