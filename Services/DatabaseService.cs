using MySql.Data.MySqlClient;
using MySql.Data.MySqlClient.Interceptors;
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
                    return true;
                }
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"MySQL Connection Error: {ex.Message}");
                return false;
            }
        }
    }
}