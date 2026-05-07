using System;
using System.IO;

namespace MilSync.Services
{
    public static class Logger
    {
        private static readonly object _sync = new();
        private static readonly string LogDirectory =
            Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "MilSync");

        private static readonly string LogFilePath =
            Path.Combine(LogDirectory, "MilSync.log");

        static Logger()
        {
            Directory.CreateDirectory(LogDirectory);
        }

        public static void Log(string message)
        {
            var line = $"{DateTime.Now:yyyy-MM-dd HH:mm:ss.fff} {message}";
            lock (_sync)
            {
                File.AppendAllText(LogFilePath, line + Environment.NewLine);
            }
        }

        public static void LogException(Exception ex, string? context = null)
        {
            Log($"{context ?? "ERROR"}: {ex.GetType().Name}: {ex.Message} | {ex.StackTrace}");
        }
    }
}