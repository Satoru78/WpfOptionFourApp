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
using WpfOptionFourApp.Model;

namespace WpfOptionFourApp.Views.Pages.AdminPages
{
    /// <summary>
    /// Логика взаимодействия для AdminMainPage.xaml
    /// </summary>
    public partial class AdminMainPage : Page
    {
        public AdminMainPage()
        {
            InitializeComponent();
        }

        private void ManagerDataBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ManagerDataViewPage(new Manager()));
        }

        private void EmployeesDataBtn_Click(object sender, RoutedEventArgs e)
        {

        }

    }
}
