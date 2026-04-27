using System;

namespace MilSyn.Models
{
    public class Application
    {
        public int ApplicationID { get; set; }
        public int UserID { get; set; }
        public int JobID { get; set; }
        public DateTime SubmissionDate { get; set; }
        public string? Status { get; set; } = "Pending";

        // Relationships in DB, adding "foreign keys"(navigation properties)

        public required User Applicant { get; set; }
        public required Job AppliedJob { get; set; }    
    }
}