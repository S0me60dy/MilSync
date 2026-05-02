using MySql.Data.MySqlClient;
using System;
namespace MilSyn.Services
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
                Console.WriteLine($"MySQL Connection Error: {ex.Message}");
                return false;
            }
            // either catch other exceptions or create a finally block to handle a cleanup
            return true;
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
                            Console.WriteLine("User doesn't exist.");
                            return null;
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"General Error: {ex.Message}");
                return null;
            }
        }
    }
}