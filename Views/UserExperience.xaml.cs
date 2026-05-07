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
    /// Interaction logic for UserExperience.xaml
    /// </summary>
    public partial class UserExperience : Window
    {
        private User _currentUser;

        public UserExperience(User user)
        {
            InitializeComponent();
            _currentUser = user;

            // Initialize UI with User Data
            WelcomeText.Text = $"Welcome, {user.Username}";
            ProfileUsername.Text = user.Username;
            ProfileRole.Text = user.Role;
            ProfileEmail.Text = user.Email;
            ProfileRank.Text = user.Rank ?? "N/A";
            
            LoadUserData();
        }

        private void LoadUserData()
        {
            // Here you will call your services to load Job and Record data
            // JobsGrid.ItemsSource = jobService.GetAvailableJobs();
        }

        private void Apply_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Application submitted successfully!");
        }

        private void Logout_Click(object sender, RoutedEventArgs e)
        {
            new MainWindow().Show();
            this.Close();
        }
    }
}