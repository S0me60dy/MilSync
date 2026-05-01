using System;

namespace MilSyn.Models
{
    public class MilitaryRecord
    {
        public int MilitaryID{ get; set; }
        public int UserID { get; set; }
        public string? CurrentRank { get; set; }
        public string? Status { get; set; } = "Active";
        public DateTime LastUpdateDate { get; set; }
        public string? ResidentialAddress { get; set; }
        // Relationships in DB, adding "foreign keys"(navigation properties)

        public required User Veteran { get; set; }
        
    }
}