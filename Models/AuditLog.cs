using System;
namespace MilSync.Models
{
    public class AuditLog
    {
        public int AuditLogId { get; set; }
        public int RecordId { get; set; }
        public int? ChangedByUserId { get; set; }
        public string? ChangeType { get; set; }
        public DateTime? ChangeTimestamp { get; set; } = DateTime.UtcNow;
        public string? OldValues { get; set; }
        public string? NewValues { get; set; }
    }
}