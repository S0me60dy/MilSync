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
using MilSyn.Services;
using MilSync.Helpers;
using Org.BouncyCastle.Asn1;

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

        string username = loginVM.Username;
        string password = passwordBox.Password;

        if (dbService.TestConnection())
        {
            var hash = dbService.GetUserHash(username);
            // debug MessageBox.Show($"Entered password: {password}.{Environment.NewLine} Hash from DB: {hash}");

            if (hash == null)
            {
                MessageBox.Show("hash is null");
                return;
            }

            if (hashingService.CheckPassword(password, hash))
            {
                MessageBox.Show("Login successful!");
                
            }
            else
            {
                MessageBox.Show($"Incorrect password or login. Please try again.");
            }
        }
    }
}