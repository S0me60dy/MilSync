namespace MilSyn.Models
{
    public class Job
    {
        public int JobID { get; set; }
        public required string Title { get; set; }
        public string? Description { get; set; }
        public string? Location { get; set; }
        public decimal Salary { get; set; }
        public string? RequiredRank { get; set;}
        
        // Relationships in DB, adding "foreign keys"(navigation properties)

        public List<Application> Applications { get; set; }
    }
}