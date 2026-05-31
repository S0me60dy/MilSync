using System;
using System.IO;

namespace MilSync.Services
{
    public static class FileStorageService
    {
        private static readonly string BaseDir = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData),
            "MilSync");

        public static string DocumentsDir => Path.Combine(BaseDir, "Documents");
        public static string AvatarsDir   => Path.Combine(BaseDir, "Avatars");

        static FileStorageService()
        {
            Directory.CreateDirectory(DocumentsDir);
            Directory.CreateDirectory(AvatarsDir);
        }

        public static string SaveDocument(int userId, string sourcePath)
        {
            string ext      = Path.GetExtension(sourcePath);
            string filename = $"user_{userId}_medical_{DateTime.UtcNow:yyyyMMddHHmmss}{ext}";
            string dest     = Path.Combine(DocumentsDir, filename);
            File.Copy(sourcePath, dest, overwrite: true);
            Logger.Log($"Document saved: {dest}");
            return dest;
        }

        public static string SaveAvatar(int userId, string sourcePath)
        {
            string ext      = Path.GetExtension(sourcePath);
            string filename = $"user_{userId}_avatar{ext}";
            string dest     = Path.Combine(AvatarsDir, filename);
            File.Copy(sourcePath, dest, overwrite: true);
            Logger.Log($"Avatar saved: {dest}");
            return dest;
        }
    }
}