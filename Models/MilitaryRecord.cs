using System;

namespace MilSync.Models
{
    public class MilitaryRecord
    {
        public int MilitaryID{ get; set; }
        public int UserID { get; set; }
        public string? CurrentRank { get; set; }
        public string? ServiceStatus { get; set; } = "Active";
        public DateTime LastUpdateDate { get; set; }
        public string? ResidentialAddress { get; set; }
    }
}