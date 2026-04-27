using System;
using System.Collections.Generic;
var DatabaseService = new MilSyn.Services.DatabaseService();
var connection = DatabaseService.GetConnection();

try
{
    connection.Open();
    Console.WriteLine("Connection successful!");
} catch (Exception ex)
{
    Console.WriteLine($"Error: {ex.Message}");
}
finally
{
    connection.Close();
    Console.WriteLine("Connection closed.");
}