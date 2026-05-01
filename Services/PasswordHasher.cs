using System;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using Konscious.Security.Cryptography;

namespace MilSync.Helpers
{
    public class PasswordHasher
    {
        private const int DegreeOfParallelism = 8; // number of CPU threads to use for hashing
        private const int MemorySize = 1024 * 64; // memory allocated for hashing (64 MB)
        private const int Iterations = 5; // number of iterations
        private const int SaltSize = 16; // size of the salt in bytes
        private const int HashSize = 32; // size of the hash in bytes

        public string HashPassword(string password)
        {
            byte[] salt = new byte[SaltSize];
            RandomNumberGenerator.Fill(salt);

            var argon2 = new Argon2id(Encoding.UTF8.GetBytes(password))
            {
                Salt = salt,
                DegreeOfParallelism = DegreeOfParallelism,
                MemorySize = MemorySize,
                Iterations = Iterations
            };

            byte[] hash = argon2.GetBytes(HashSize);
            return $"{Convert.ToBase64String(salt)}:{Convert.ToBase64String(hash)}";
        }

        public string UnHashPassword(string password, string HashedPassword)
        {
            var parts = HashedPassword.Split(':');
            byte[] salt = Convert.FromBase64String(parts[0]);
            byte[] hash = Convert.FromBase64String(parts[1]);

            var argon2 = new Argon2id(Encoding.UTF8.GetBytes(password))
            {
                Salt = salt,
                DegreeOfParallelism = DegreeOfParallelism,
                MemorySize = MemorySize,
                Iterations = Iterations
            };

            byte[] newHash = argon2.GetBytes(HashSize);

            return (Convert.ToBase64String(newHash) == Convert.ToBase64String(hash)) ? "The password is correct." : "The password is incorrect.";
        }
    }
}