using System;

namespace MilSync.Models
{
    public class ApplicationDto
    {
        public int ApplicationID { get; set; }
        public int UserID { get; set; }
        public string? Username { get; set; }
        public int JobID { get; set; }
        public string JobTitle { get; set; } = string.Empty;
        public DateTime SubmissionDate { get; set; }
        public string? Status { get; set; }
    }
}
