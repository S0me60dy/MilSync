using System.Drawing.Text;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using MilSync.ViewModels;
using MilSync.Services;
using Org.BouncyCastle.Asn1;
using MilSync.Models;

namespace MilSync.Views
{
    /// <summary>
    /// Interaction logic for AdminDashboard.xaml
    /// </summary>
    public partial class AdminDashboard : Window
    {
        private User _currentUser;

        public AdminDashboard(User user)
        {
            Logger.Log($"Admin Dashboard initialized successfully for user {user.Username}.");
            
            InitializeComponent();
            _currentUser = user;
            LoadUsers();
        }
        private void LoadUsers()
        {
            var dbService = new DatabaseService();
            var adminService = new AdminService(dbService);
            List<User> users = adminService.GetAllUsers();
            UsersDataGrid.ItemsSource = users;
        }
        private void Logout_Click(object sender, RoutedEventArgs e)
        {
            var loginWindow = new MainWindow();
            loginWindow.Show();
            this.Close();
        }
    }
}