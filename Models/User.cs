namespace MilSyn.Models
{
    public abstract class User
    {
        public int UserID { get; set; }
        public required string Username { get; set; }
        public required string PasswordHash { get; set; }
        public required string Email { get; set; }
        public string? Rank { get; set; }
        public string? ProfilePicturePath { get; set; }
        public bool IsActive { get; set; }
        public bool Role { get; set; }
    }
}