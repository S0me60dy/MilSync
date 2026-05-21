using MilSync.Models;
using MySql.Data.MySqlClient;
using Bogus;
using System.Configuration;


namespace MilSync.Services
{
    public class DatabaseService
    {
        readonly string connectionString = "Server=127.0.0.1;Database=MilSync;User=root;Password=";
        public MySqlConnection GetConnection()
        {
            return new MySqlConnection(connectionString);
        }
        public bool TestConnection()
        {
            try
            {
                using (var connection = GetConnection())
                {
                    connection.Open();
                }
            }
            catch (MySqlException ex)
            {
                Logger.LogException(ex, "MySQL Connection Error");
                return false;
            }
            // either catch other exceptions or create a finally block to handle a cleanup
            return true;
        }
        public void CreateTestUsers()
        {
            var ranks = new[] { "Major", "Sergeant", "Corporal", "Private", null };
            var roles = new[] { "Admin", "User"};
            var fakerUser = new Faker<User>()
                .RuleFor(u => u.Username, f => f.Internet.UserName())
                .RuleFor(u => u.Email, f => f.Internet.Email())
                .RuleFor(u => u.Rank, f => f.PickRandom(ranks))
                .RuleFor(u => u.Role, f => f.PickRandom(roles))
                .RuleFor(u => u.IsActive, f => f.Random.Bool(0.8f));
            List<User> fakeUsers = fakerUser.Generate(100);
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string password = "Password!123";
                    var hashingService = new PasswordHasher();
                    string passwordHash = hashingService.HashPassword(password);
                    foreach (var user in fakeUsers)
                    {
                        string sql = "INSERT INTO USER (Username, PasswordHash, Email, Rank, IsActive, Role) VALUES (@username, @passwordHash, @email, @rank, @isActive, @role)";
                        using (var cmd = new MySqlCommand(sql, conn))
                        {
                            cmd.Parameters.AddWithValue("@username", user.Username);
                            cmd.Parameters.AddWithValue("@passwordHash", passwordHash);
                            cmd.Parameters.AddWithValue("@email", user.Email);
                            cmd.Parameters.AddWithValue("@rank", user.Rank);
                            cmd.Parameters.AddWithValue("@isActive", user.IsActive);
                            cmd.Parameters.AddWithValue("@role", user.Role);
                            cmd.ExecuteNonQuery();
                        }
                        Logger.Log("Database Seeder: Successfully injected 100 fake accounts into XAMPP.");
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error creating test users");
            }
        }
        public string? GetUserHash(string username)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = $"SELECT PasswordHash FROM USER WHERE Username = @username"; // using the parameterized query to prevent SQL injection
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@username", username);
                        var result = cmd.ExecuteScalar();
                        if (result != null)
                        {
                            return result?.ToString();
                        }
                        else
                        {
                            Logger.Log("User doesn't exist.");
                            return null;
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "General Error");
                return null;
            }
        }
        public User? GetUserbyUsername(string username)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = $"SELECT * FROM USER WHERE Username = @username";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@username", username);
                        using (var reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                User user = new User
                                {
                                    UserID = reader.GetInt32("UserID"),
                                    Username = reader.GetString("Username"),
                                    PasswordHash = reader.GetString("PasswordHash"),
                                    Email = reader.GetString("Email"),
                                    Rank = reader.IsDBNull(reader.GetOrdinal("Rank")) ? null : reader.GetString("Rank"),
                                    ProfilePicture = reader.IsDBNull(reader.GetOrdinal("ProfilePicture")) ? null : reader.GetString("ProfilePicture"),
                                    IsActive = reader.GetBoolean("IsActive"),
                                    Role = reader.GetString("Role")
                                };
                                return user;
                            }
                            else
                            {
                                Logger.Log("User doesn't exist.");
                                return null;
                            }
                        }
                    }

                }
            } catch (Exception ex)
            {
                Logger.LogException(ex, "Error occurred while fetching the user");
                return null;
                
            }
        }
    }
}