using System.Collections.Generic;
namespace MilSync.Models
{
    public class Job
    {
        public int JobID { get; set; }
        public required string Title { get; set; }
        public string? Description { get; set; }
        public string? Location { get; set; }
        public decimal Salary { get; set; }
        public string? RequiredRank { get; set;}
        public string Requirements => RequiredRank ?? "N/A";
        
        // Relationships in DB, adding "foreign keys"(navigation properties)

        public List<Application> Applications { get; set; } = new();

        public Job()
        {
            Applications = new List<Application>();
        }
    }
}