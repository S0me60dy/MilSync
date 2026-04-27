// The main entry point where all the logic is handled
using MilSyn.Services;

namespace MilSyn.ViewModels
{
    public partial class MainWindowViewModel : ViewModelBase
{
    public string Greeting { get; } = "Welcome to Avalonia!";
    public string ConnectionStatus { get; }

    public MainWindowViewModel()
    {
        var dbService = new DatabaseService();
        ConnectionStatus = dbService.TestConnection() ? "Successfully connected to MySQL database!" : "Failed to connect to MySQL database.";
    }
}

}
