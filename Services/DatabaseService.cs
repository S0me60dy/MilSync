using MilSync.Models;
using MySql.Data.MySqlClient;
using Bogus;
using System;
using System.Collections.Generic;
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

        public int CreateApplication(Application app)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "INSERT INTO APPLICATION (UserID, JobID, SubmissionDate, Status) VALUES (@userId, @jobId, @submissionDate, @status)";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@userId", app.UserID);
                        cmd.Parameters.AddWithValue("@jobId", app.JobID);
                        cmd.Parameters.AddWithValue("@submissionDate", app.SubmissionDate);
                        cmd.Parameters.AddWithValue("@status", (object?)app.Status ?? DBNull.Value);
                        cmd.ExecuteNonQuery();
                    }
                    using (var idCmd = new MySqlCommand("SELECT LAST_INSERT_ID()", conn))
                    {
                        var id = idCmd.ExecuteScalar();
                        return Convert.ToInt32(id);
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error creating application");
                return 0;
            }
        }

        public bool UpdateApplication(Application app)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "UPDATE APPLICATION SET UserID=@userId, JobID=@jobId, SubmissionDate=@submissionDate, Status=@status WHERE ApplicationID=@id";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@userId", app.UserID);
                        cmd.Parameters.AddWithValue("@jobId", app.JobID);
                        cmd.Parameters.AddWithValue("@submissionDate", app.SubmissionDate);
                        cmd.Parameters.AddWithValue("@status", (object?)app.Status ?? DBNull.Value);
                        cmd.Parameters.AddWithValue("@id", app.ApplicationID);
                        int rows = cmd.ExecuteNonQuery();
                        return rows > 0;
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error updating application");
                return false;
            }
        }

        public bool DeleteApplication(int applicationId)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "DELETE FROM APPLICATION WHERE ApplicationID = @id";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@id", applicationId);
                        int rows = cmd.ExecuteNonQuery();
                        return rows > 0;
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error deleting application");
                return false;
            }
        }

        public Application? GetApplicationById(int applicationId)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "SELECT ApplicationID, UserID, JobID, SubmissionDate, Status FROM APPLICATION WHERE ApplicationID=@id LIMIT 1";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@id", applicationId);
                        using (var reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                return new Application
                                {
                                    ApplicationID = reader.GetInt32("ApplicationID"),
                                    UserID = reader.GetInt32("UserID"),
                                    JobID = reader.GetInt32("JobID"),
                                    SubmissionDate = reader.IsDBNull(reader.GetOrdinal("SubmissionDate")) ? DateTime.MinValue : reader.GetDateTime("SubmissionDate"),
                                    Status = reader.IsDBNull(reader.GetOrdinal("Status")) ? null : reader.GetString("Status")
                                };
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error fetching application by id");
            }
            return null;
        }
        public int CreateJob(Job job)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "INSERT INTO JOB_LISTING (Title, Description, Location, Salary, RequiredRank) VALUES (@title, @description, @location, @salary, @requiredRank)";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@title", job.Title);
                        cmd.Parameters.AddWithValue("@description", (object?)job.Description ?? DBNull.Value);
                        cmd.Parameters.AddWithValue("@location", (object?)job.Location ?? DBNull.Value);
                        cmd.Parameters.AddWithValue("@salary", job.Salary);
                        cmd.Parameters.AddWithValue("@requiredRank", (object?)job.RequiredRank ?? DBNull.Value);
                        cmd.ExecuteNonQuery();
                    }
                    using (var idCmd = new MySqlCommand("SELECT LAST_INSERT_ID()", conn))
                    {
                        var id = idCmd.ExecuteScalar();
                        return Convert.ToInt32(id);
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error creating job");
                return 0;
            }
        }

        public bool UpdateJob(Job job)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "UPDATE JOB_LISTING SET Title=@title, Description=@description, Location=@location, Salary=@salary, RequiredRank=@requiredRank WHERE JobID=@jobId";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@title", job.Title);
                        cmd.Parameters.AddWithValue("@description", (object?)job.Description ?? DBNull.Value);
                        cmd.Parameters.AddWithValue("@location", (object?)job.Location ?? DBNull.Value);
                        cmd.Parameters.AddWithValue("@salary", job.Salary);
                        cmd.Parameters.AddWithValue("@requiredRank", (object?)job.RequiredRank ?? DBNull.Value);
                        cmd.Parameters.AddWithValue("@jobId", job.JobID);
                        int rows = cmd.ExecuteNonQuery();
                        return rows > 0;
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error updating job");
                return false;
            }
        }

        public bool DeleteJob(int jobId)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "DELETE FROM JOB_LISTING WHERE JobID = @jobId";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@jobId", jobId);
                        int rows = cmd.ExecuteNonQuery();
                        return rows > 0;
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error deleting job");
                return false;
            }
        }

        public bool UpdateApplicationStatus(int applicationId, string status)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "UPDATE APPLICATION SET Status = @status WHERE ApplicationID = @id";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@status", status);
                        cmd.Parameters.AddWithValue("@id", applicationId);
                        int rows = cmd.ExecuteNonQuery();
                        return rows > 0;
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error updating application status");
                return false;
            }
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
            return true;
        }
        public void CreateTestUsers()
        {
            var roles = new[] { "Admin", "User" };
            var fakerUser = new Faker<User>()
                .RuleFor(u => u.Username, f => f.Internet.UserName())
                .RuleFor(u => u.Email, f => f.Internet.Email())
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
                        string sql = "INSERT INTO USER (Username, PasswordHash, Email, IsActive, Role) VALUES (@username, @passwordHash, @email, @isActive, @role)";
                        using (var cmd = new MySqlCommand(sql, conn))
                        {
                            cmd.Parameters.AddWithValue("@username", user.Username);
                            cmd.Parameters.AddWithValue("@passwordHash", passwordHash);
                            cmd.Parameters.AddWithValue("@email", user.Email);
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
                                    ProfilePicture = reader.IsDBNull(reader.GetOrdinal("ProfilePicture")) ? null : reader.GetString("ProfilePicture"),
                                    IsActive = reader.GetBoolean("IsActive"),
                                    Role = reader.GetString("Role"),
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

        public MilitaryRecord? GetMilitaryRecordByUserId(int userId)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "SELECT RecordID, UserID, CurrentRank, Status, LastUpdateDate, ResidentialAddress FROM MILITARY_RECORD WHERE UserID = @userID LIMIT 1";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@userID", userId);
                        using (var reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                var record = new MilitaryRecord
                                {
                                    MilitaryID = reader.GetInt32("RecordID"),
                                    UserID = reader.GetInt32("UserID"),
                                    CurrentRank = reader.IsDBNull(reader.GetOrdinal("CurrentRank")) ? null : reader.GetString("CurrentRank"),
                                    ServiceStatus = reader.IsDBNull(reader.GetOrdinal("Status")) ? null : reader.GetString("Status"),
                                    LastUpdateDate = reader.IsDBNull(reader.GetOrdinal("LastUpdateDate")) ? DateTime.MinValue : reader.GetDateTime("LastUpdateDate"),
                                    ResidentialAddress = reader.IsDBNull(reader.GetOrdinal("ResidentialAddress")) ? null : reader.GetString("ResidentialAddress"),
                                };
                                return record;
                            }
                            return null;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error fetching military record");
                return null;
            }
        }

        public List<MedicalRecord> GetMedicalRecordsByUserId(int userId)
        {
            var records = new List<MedicalRecord>();
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "SELECT MedicalID, UserID, BloodType, FitnessStatus, Allergies, DocumentPath FROM MEDICAL_RECORD WHERE UserID = @userID";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@userId", userId);
                        using (var reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                records.Add(new MedicalRecord
                                {
                                    MedicalID = reader.GetInt32("MedicalID"),
                                    UserID = reader.GetInt32("UserID"),
                                    BloodType = reader.IsDBNull(reader.GetOrdinal("BloodType")) ? null : reader.GetString("BloodType"),
                                    FitnessStatus = reader.IsDBNull(reader.GetOrdinal("FitnessStatus")) ? null : reader.GetString("FitnessStatus"),
                                    Allergies = reader.IsDBNull(reader.GetOrdinal("Allergies")) ? null : reader.GetString("Allergies"),
                                    DocumentPath = reader.IsDBNull(reader.GetOrdinal("DocumentPath")) ? null : reader.GetString("DocumentPath"),
                                });
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error fetching medical records");
            }
            return records;
        }
        public List<Job> GetJobListings()
        {
            var jobs = new List<Job>();
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "SELECT JobID, Title, Description, Location, Salary, RequiredRank FROM JOB_LISTING";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        using (var reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                jobs.Add(new Job
                                {
                                    JobID = reader.GetInt32("JobID"),
                                    Title = reader.GetString("Title"),
                                    Description = reader.IsDBNull(reader.GetOrdinal("Description")) ? null : reader.GetString("Description"),
                                    Location = reader.IsDBNull(reader.GetOrdinal("Location")) ? null : reader.GetString("Location"),
                                    Salary = reader.IsDBNull(reader.GetOrdinal("Salary")) ? 0 : reader.GetDecimal("Salary"),
                                    RequiredRank = reader.IsDBNull(reader.GetOrdinal("RequiredRank")) ? null : reader.GetString("RequiredRank"),
                                });
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error fetching job listings");
            }
            return jobs;
        }

        public Job? GetJobById(int jobId)
        {
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = "SELECT JobID, Title, Description, Location, Salary, RequiredRank FROM JOB_LISTING WHERE JobID = @jobId LIMIT 1";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@jobId", jobId);
                        using (var reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                return new Job
                                {
                                    JobID = reader.GetInt32("JobID"),
                                    Title = reader.GetString("Title"),
                                    Description = reader.IsDBNull(reader.GetOrdinal("Description")) ? null : reader.GetString("Description"),
                                    Location = reader.IsDBNull(reader.GetOrdinal("Location")) ? null : reader.GetString("Location"),
                                    Salary = reader.IsDBNull(reader.GetOrdinal("Salary")) ? 0 : reader.GetDecimal("Salary"),
                                    RequiredRank = reader.IsDBNull(reader.GetOrdinal("RequiredRank")) ? null : reader.GetString("RequiredRank"),
                                };
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error fetching job by id");
            }
            return null;
        }
        public List<ApplicationDto> GetApplications(int? userId = null)
        {
            var list = new List<ApplicationDto>();
            try
            {
                using (var conn = GetConnection())
                {
                    conn.Open();
                    string sql = @"
                SELECT a.ApplicationID, a.UserID, u.Username, a.JobID, jl.Title AS JobTitle, a.SubmissionDate, a.Status
                FROM APPLICATION a
                LEFT JOIN USER u ON a.UserID = u.UserID
                LEFT JOIN JOB_LISTING jl ON a.JobID = jl.JobID
                WHERE (@userId IS NULL OR a.UserID = @userId)
                ORDER BY a.SubmissionDate DESC";
                    using (var cmd = new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@userId", (object?)userId ?? DBNull.Value);
                        using (var reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                list.Add(new ApplicationDto
                                {
                                    ApplicationID = reader.GetInt32("ApplicationID"),
                                    UserID = reader.IsDBNull(reader.GetOrdinal("UserID")) ? 0 : reader.GetInt32("UserID"),
                                    Username = reader.IsDBNull(reader.GetOrdinal("Username")) ? null : reader.GetString("Username"),
                                    JobID = reader.IsDBNull(reader.GetOrdinal("JobID")) ? 0 : reader.GetInt32("JobID"),
                                    JobTitle = reader.IsDBNull(reader.GetOrdinal("JobTitle")) ? string.Empty : reader.GetString("JobTitle"),
                                    SubmissionDate = reader.IsDBNull(reader.GetOrdinal("SubmissionDate")) ? DateTime.MinValue : reader.GetDateTime("SubmissionDate"),
                                    Status = reader.IsDBNull(reader.GetOrdinal("Status")) ? null : reader.GetString("Status")
                                });
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex, "Error fetching applications");
            }
            return list;
        }
    }
}