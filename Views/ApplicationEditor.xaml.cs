using System;
using System.Windows;
using MilSync.Models;
using ModelApp = MilSync.Models.Application;

namespace MilSync.Views
{
    public partial class ApplicationEditor : Window
    {
        public ModelApp Application { get; private set; }

        public ApplicationEditor(ModelApp app)
        {
            InitializeComponent();
            Application = new ModelApp
            {
                ApplicationID = app.ApplicationID,
                UserID = app.UserID,
                JobID = app.JobID,
                SubmissionDate = app.SubmissionDate == DateTime.MinValue ? DateTime.Now : app.SubmissionDate,
                Status = app.Status
            };
            DataContext = Application;
        }

        private void Ok_Click(object sender, RoutedEventArgs e)
        {
            if (Application.UserID <= 0)
            {
                MessageBox.Show("UserID must be greater than 0.");
                return;
            }
            if (Application.JobID <= 0)
            {
                MessageBox.Show("JobID must be greater than 0.");
                return;
            }
            DialogResult = true;
            Close();
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }
    }
}