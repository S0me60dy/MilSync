namespace MilSyn.Models
{
    public class MedicalRecord
    {
        public int MedicalID{ get; set; }
        public int UserID { get; set; }
        public string? BloodType { get; set; }
        public string? FitnessStatus { get; set; }
        public string? Allergies { get; set; }
        public string? DocumentPath { get; set;}

        // Relationships in DB, adding "foreign keys"(navigation properties)

        public required User Patient { get; set; }
    }
}