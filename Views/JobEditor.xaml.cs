using System;
using System.Windows;
using MilSync.Models;

namespace MilSync.Views
{
    public partial class JobEditor : Window
    {
        public Job Job { get; private set; }

        public JobEditor(Job job)
        {
            InitializeComponent();
            Job = new Job
            {
                JobID = job.JobID,
                Title = job.Title,
                Description = job.Description,
                Location = job.Location,
                Salary = job.Salary,
                RequiredRank = job.RequiredRank
            };
            DataContext = Job;
        }

        private void Ok_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Job.Title))
            {
                MessageBox.Show("Title is required.");
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