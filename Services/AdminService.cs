using System;
using System.Collections.Generic;
using MilSyn.Models;
using MySql.Data.MySqlClient;

namespace MilSyn.Services
{
    public class AdminService
    {
        private readonly DatabaseService _dbService;

        public AdminService(DatabaseService dbService)
        {
            _dbService = dbService;
        }

        public List<User> GetAllUsers()
        {
            var users = new List<User>();
            using (var conn = _dbService.GetConnection())
            {
                conn.Open();
                // SQL based on your USER table structure
                string sql = "SELECT UserID, Username, Email, Rank, IsActive, Role FROM USER";
                using (var cmd = new MySqlCommand(sql, conn))
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        // We use a concrete class because User is abstract
                        users.Add(new Admin 
                        { 
                            UserID = reader.GetInt32("UserID"),
                            PasswordHash = null, // Don't retrieve password hash for security reasons
                            Username = reader.GetString("Username"),
                            Email = reader.GetString("Email"),
                            Rank = reader.IsDBNull(reader.GetOrdinal("Rank")) ? null : reader.GetString("Rank"),
                            IsActive = reader.GetBoolean("IsActive"),
                            Role = reader.GetBoolean("Role")
                        });
                    }
                }
            }
            return users;
        }

        public User GetUserById(int userId)
        {
            using (var conn = _dbService.GetConnection())
            {
                conn.Open();
                string sql = "SELECT UserID, Username, Email, Rank, IsActive, Role FROM USER WHERE UserID = @userId";
                using (var cmd = new MySqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@userId", userId);
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return new Admin
                            {
                                UserID = reader.GetInt32("UserID"),
                                Username = reader.GetString("Username"),
                                Email = reader.GetString("Email"),
                                Rank = reader.IsDBNull(reader.GetOrdinal("Rank")) ? null : reader.GetString("Rank"),
                                IsActive = reader.GetBoolean("IsActive"),
                                Role = reader.GetBoolean("Role"),
                                PasswordHash = null
                            };
                        }
                    }
                }
            }
            return null;
        }

        public bool CreateUser(string username, string email, string passwordHash, string rank = null, bool isActive = true)
        {
            try
            {
                using (var conn = _dbService.GetConnection())
                {
                    conn.Open();
                    string sql = "INSERT INTO USER (Username, Email, PasswordHash, Rank, IsActive) VALUES (@username, @email, @passwordHash, @rank, @isActive)";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@passwordHash", passwordHash);
                        cmd.Parameters.AddWithValue("@rank", rank ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@isActive", isActive);
                        cmd.ExecuteNonQuery();
                        return true;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error creating user: {ex.Message}");
                return false;
            }
        }

        public bool DeleteUser(int userId)
        {
            try
            {
                using (var conn = _dbService.GetConnection())
                {
                    conn.Open();
                    string sql = "DELETE FROM USER WHERE UserID = @userId";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@userId", userId);
                        cmd.ExecuteNonQuery();
                        return true;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error deleting user: {ex.Message}");
                return false;
            }
        }

        public bool UpdateUser(User user)
        {
            try
            {
                using (var conn = _dbService.GetConnection())
                {
                    conn.Open();
                    string sql = "UPDATE USER SET Username = @username, Email = @email, Rank = @rank, IsActive = @isActive, Role = @role WHERE UserID = @userId";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@username", user.Username);
                        cmd.Parameters.AddWithValue("@email", user.Email);
                        cmd.Parameters.AddWithValue("@rank", user.Rank ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@isActive", user.IsActive);
                        cmd.Parameters.AddWithValue("@role", user.Role);
                        cmd.Parameters.AddWithValue("@userId", user.UserID);
                        cmd.ExecuteNonQuery();
                        return true;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error updating user: {ex.Message}");
                return false;
            }
        }
    }
}