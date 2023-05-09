using System;
using System.Data;
using System.Data.SqlClient;

namespace MyApp
{
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString = "Server=mysql;Database=my_database;Uid=my_username;Pwd=my_password;";
            string sql = "SELECT * FROM MyTable";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Console.WriteLine("{0} {1} {2} {3} {4}", reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetString(4));
                        }
                    }
                }
            }

            Console.ReadKey();
        }
    }
}
