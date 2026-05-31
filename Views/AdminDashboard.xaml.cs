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
using ModelApp = MilSync.Models.Application;

namespace MilSync.Views
{
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

        private void LoadJobPostings()
        {
            try
            {
                var db = new DatabaseService();
                var jobs = db.GetJobListings();
                JobsDataGrid.ItemsSource = jobs;
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error loading job postings");
            }
        }

        private void LoadApplications()
        {
            try
            {
                var db = new DatabaseService();
                var apps = db.GetApplications();
                ApplicationsDataGrid.ItemsSource = apps;
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error loading applications");
            }
        }

        private void Logout_Click(object sender, RoutedEventArgs e)
        {
            var loginWindow = new MainWindow();
            loginWindow.Show();
            this.Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            AdminTabControl.SelectedIndex = 1; 
        }

        private void AdminTabControl_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (AdminTabControl.SelectedItem is TabItem ti)
            {
                var header = ti.Header?.ToString();
                if (header == "Job Postings")
                {
                    LoadJobPostings();
                }
                else if (header == "Applications")
                {
                    LoadApplications();
                }
                else if (header == "Personnel")
                {
                    LoadUsers();
                }
            }
        }

        private void CreateJob_Click(object sender, RoutedEventArgs e)
        {
            var job = new Job { Title = "", Description = "", Location = "", Salary = 0, RequiredRank = null };
            var editor = new JobEditor(job);
            if (editor.ShowDialog() == true)
            {
                var db = new DatabaseService();
                int id = db.CreateJob(editor.Job);
                if (id > 0)
                {
                    LoadJobPostings();
                    MessageBox.Show($"Job created (ID={id}).");
                }
                else
                {
                    MessageBox.Show("Failed to create job.");
                }
            }
        }

        private void EditJob_Click(object sender, RoutedEventArgs e)
        {
            if (JobsDataGrid.SelectedItem is Job selected)
            {
                selected.Title = selected.Title + " (edited)";
                var db = new DatabaseService();
                bool ok = db.UpdateJob(selected);
                if (ok)
                {
                    LoadJobPostings();
                    MessageBox.Show("Job updated.");
                }
                else
                {
                    MessageBox.Show("Failed to update job.");
                }
            }
            else
            {
                MessageBox.Show("Select a job to edit.");
            }
        }

        private void DeleteJob_Click(object sender, RoutedEventArgs e)
        {
            if (JobsDataGrid.SelectedItem is Job selected)
            {
                var db = new DatabaseService();
                bool ok = db.DeleteJob(selected.JobID);
                if (ok)
                {
                    LoadJobPostings();
                    MessageBox.Show("Job deleted.");
                }
                else
                {
                    MessageBox.Show("Failed to delete job.");
                }
            }
            else
            {
                MessageBox.Show("Select a job to delete.");
            }
        }



        private void CreateApplication_Click(object sender, RoutedEventArgs e)
        {
            var app = new ModelApp { UserID = 0, JobID = 0, SubmissionDate = DateTime.Now, Status = "Pending" };
            var editor = new ApplicationEditor(app);
            if (editor.ShowDialog() == true)
            {
                var db = new DatabaseService();
                int id = db.CreateApplication(editor.Application);
                if (id > 0)
                {
                    LoadApplications();
                    MessageBox.Show($"Application created (ID={id}).");
                }
                else
                {
                    MessageBox.Show("Failed to create application.");
                }
            }
        }

        private void EditAppById_Click(object sender, RoutedEventArgs e)
        {
            if (int.TryParse(EditAppByIdTextBox.Text, out int id))
            {
                var db = new DatabaseService();
                var app = db.GetApplicationById(id);
                if (app != null)
                {
                    var editor = new ApplicationEditor(app);
                    if (editor.ShowDialog() == true)
                    {
                        editor.Application.ApplicationID = app.ApplicationID;
                        bool ok = db.UpdateApplication(editor.Application);
                        if (ok)
                        {
                            LoadApplications();
                            MessageBox.Show("Application updated.");
                        }
                        else
                        {
                            MessageBox.Show("Failed to update application.");
                        }
                    }
                }
                else
                {
                    MessageBox.Show($"No application found with ID {id}.");
                }
            }
            else
            {
                MessageBox.Show("Enter a valid Application ID.");
            }
        }

        private void DeleteAppById_Click(object sender, RoutedEventArgs e)
        {
            if (int.TryParse(EditAppByIdTextBox.Text, out int id))
            {
                var confirm = MessageBox.Show($"Are you sure you want to delete application #{id}?", "Confirm Delete", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                if (confirm == MessageBoxResult.Yes)
                {
                    var db = new DatabaseService();
                    bool ok = db.DeleteApplication(id);
                    if (ok)
                    {
                        LoadApplications();
                        MessageBox.Show("Application deleted.");
                    }
                    else
                    {
                        MessageBox.Show("Failed to delete application. Ensure the ID exists.");
                    }
                }
            }
            else
            {
                MessageBox.Show("Enter a valid Application ID.");
            }
        }

        private void ApplicationsDataGrid_CellEditEnding(object sender, DataGridCellEditEndingEventArgs e)
        {
            if (e.Row.Item is ApplicationDto app)
            {
                var db = new DatabaseService();
                bool ok = db.UpdateApplicationStatus(app.ApplicationID, app.Status ?? "Pending");
                if (!ok)
                {
                    MessageBox.Show("Failed to update application status.");
                }
            }
        }

        private void JobsDataGrid_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            EditJob_Click(sender, new RoutedEventArgs());
        }

        private void EditById_Click(object sender, RoutedEventArgs e)
        {
            if (int.TryParse(EditByIdTextBox.Text, out int id))
            {
                var db = new DatabaseService();
                var job = db.GetJobById(id);
                if (job != null)
                {
                    var editor = new JobEditor(job);
                    if (editor.ShowDialog() == true)
                    {
                        // Ensure the ID remains the same
                        editor.Job.JobID = job.JobID;
                        bool ok = db.UpdateJob(editor.Job);
                        if (ok)
                        {
                            LoadJobPostings();
                            MessageBox.Show("Job updated.");
                        }
                        else
                        {
                            MessageBox.Show("Failed to update job.");
                        }
                    }
                }
                else
                {
                    MessageBox.Show($"No job found with ID {id}.");
                }
            }
            else
            {
                MessageBox.Show("Enter a valid Job ID.");
            }
        }

        private void DeleteById_Click(object sender, RoutedEventArgs e)
        {
            if (int.TryParse(EditByIdTextBox.Text, out int id))
            {
                var confirm = MessageBox.Show($"Are you sure you want to delete job #{id}?", "Confirm Delete", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                if (confirm == MessageBoxResult.Yes)
                {
                    var db = new DatabaseService();
                    bool ok = db.DeleteJob(id);
                    if (ok)
                    {
                        LoadJobPostings();
                        MessageBox.Show("Job deleted.");
                    }
                    else
                    {
                        MessageBox.Show("Failed to delete job. Ensure the ID exists.");
                    }
                }
            }
            else
            {
                MessageBox.Show("Enter a valid Job ID.");
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            AdminTabControl.SelectedIndex = 0;
        }
    }
}