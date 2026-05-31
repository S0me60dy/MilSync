using System;

namespace MilSync.Models
{
    public class Application
    {
        public int ApplicationID { get; set; }
        public int UserID { get; set; }
        public int JobID { get; set; }
        public DateTime SubmissionDate { get; set; }
        public string? Status { get; set; } = "Pending";
    }
}