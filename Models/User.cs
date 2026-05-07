namespace MilSync.Models
{
    public class User
    {
        public int UserID { get; set; }
        public required string Username { get; set; }
        public required string? PasswordHash { get; set; }
        public required string Email { get; set; }
        public string? Rank { get; set; }
        public string? ProfilePicture { get; set; }
        public bool IsActive { get; set; }
        public required string Role { get; set; }
    }
}