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
using System.Windows.Shapes;
using WpfOptionFourApp.Views.Pages.AdminPages;

namespace WpfOptionFourApp.Views.Windows.AdminWindows
{
    /// <summary>
    /// Логика взаимодействия для AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {
        public AdminWindow()
        {
            InitializeComponent();
            AdminFrame.Navigate(new AdminMainPage());
        }

        private void AdminBackBtn_Click(object sender, RoutedEventArgs e)
        {
            AdminFrame.GoBack();
            
        }

        private void AdminFrame_ContentRendered(object sender, EventArgs e)
        {
            AdminBackBtn.Visibility = AdminFrame.CanGoBack ? Visibility.Visible : Visibility.Collapsed;
        }
    }
}
