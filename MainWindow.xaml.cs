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
using MilSync.Views;

namespace MilSync;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    
    public MainWindow()
    {
        InitializeComponent();
        this.DataContext = new LoginViewModel();
    }
    public void OnClickLogin(object sender, RoutedEventArgs e)
    {
        var loginVM = this.DataContext as LoginViewModel;
        if (loginVM == null)
            return;
        var dbService = new DatabaseService();
        var hashingService = new PasswordHasher();

        string? username = loginVM.Username;
        string password = passwordBox.Password;

        if (string.IsNullOrEmpty(username))
        {
            MessageBox.Show("Please enter a username");
            return;
        }

        if (dbService.TestConnection())
        {
            var hash = dbService.GetUserHash(username);
            Logger.Log($"Username {username}, hash {hash}");
            if (hash == null)
            {
                MessageBox.Show("hash is null");
                return;
            }

            if (hashingService.CheckPassword(password, hash))
            {
                Logger.Log("Password verification successful");
                User? user = dbService.GetUserbyUsername(username);

                if (user != null)
                {
                    Logger.Log($"User {user.Username} retrieved successfully with role {user.Role}");
                    Window nextWindow;
                    switch (user.Role)
                    {
                        case "Admin":
                            Logger.Log("Admin login successful");
                            nextWindow = new AdminDashboard(user);
                            break;
                        case "User":
                            Logger.Log("User login successful");
                            nextWindow = new UserExperience(user);
                            break;
                        default:
                            MessageBox.Show("Unknown user role. Access denied.");
                            return;
                    }

                    nextWindow.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("User not found:(");
                    return;
                }
            }
            else
            {
                MessageBox.Show($"Incorrect password or login. Please try again.");
            }
        }
    }
}