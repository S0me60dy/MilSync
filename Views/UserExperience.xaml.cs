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

    public partial class UserExperience : Window
    {
        private User _currentUser;

        public UserExperience(User user)
        {
            InitializeComponent();
            _currentUser = user;

            WelcomeText.Text = $"Welcome, {user.Username}";
            ProfileUsername.Text = user.Username;
            ProfileRole.Text = user.Role;
            ProfileEmail.Text = user.Email;

            LoadUserData();
            Load_Jobs();
            Load_User_Applications();
        }

        private void LoadUserData()
        {
            try
            {
                var db = new DatabaseService();
                var militaryRecord = db.GetMilitaryRecordByUserId(_currentUser.UserID);
                var medicalRecords = db.GetMedicalRecordsByUserId(_currentUser.UserID);

                if (militaryRecord != null)
                {
                    ProfileRank.Text = string.IsNullOrWhiteSpace(militaryRecord.CurrentRank) ? "N/A" : militaryRecord.CurrentRank;
                }
                else
                {
                    ProfileRank.Text = "N/A";
                }

                var sb = new StringBuilder();
                sb.AppendLine("Military Record:");
                if (militaryRecord != null)
                {
                    sb.AppendLine($"- Rank: {militaryRecord.CurrentRank ?? "N/A"}");
                    sb.AppendLine($"- Status: {militaryRecord.ServiceStatus ?? "N/A"}");
                    sb.AppendLine($"- Updated: {militaryRecord.LastUpdateDate:yyyy-MM-dd}");
                    sb.AppendLine($"- Address: {militaryRecord.ResidentialAddress ?? "N/A"}");
                }
                else
                {
                    sb.AppendLine("- No military record found.");
                }

                sb.AppendLine();
                sb.AppendLine("Medical Records:");
                if (medicalRecords.Count > 0)
                {
                    foreach (var record in medicalRecords)
                    {
                        sb.AppendLine($"- Blood Type: {record.BloodType ?? "N/A"}");
                        sb.AppendLine($"  Fitness: {record.FitnessStatus ?? "N/A"}");
                        sb.AppendLine($"  Allergies: {record.Allergies ?? "None"}");
                        sb.AppendLine($"  Document: {record.DocumentPath ?? "N/A"}");
                        sb.AppendLine();
                    }
                }
                else
                {
                    sb.AppendLine("- No medical records found.");
                }

                RecordsContent.Text = sb.ToString().Trim();
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error loading records for UI");
                RecordsContent.Text = "Unable to load records at this time.";
                ProfileRank.Text = "N/A";
            }
        }

        private void Load_Jobs()
        {
            try
            {
                var db = new DatabaseService();
                var jobs = db.GetJobListings();
                JobsGrid.ItemsSource = jobs;
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error loading job listings for UI");
            }
        }

        private void Load_User_Applications()
        {
            try
            {
                var db = new DatabaseService();
                var applications = db.GetApplications(_currentUser.UserID);
                ApplicationsGrid.ItemsSource = applications;
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error loading applications for UI");
            }
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

        private void JobsGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}