using System;
using MySql.Data.MySqlClient;

namespace Caronas4Colonia.Repositories
{
    public class LoginRepository : Connection
    {
        public static bool Authenticate(String user, String password)
        {
            MySqlConnection conn = getConn();
            
            conn.Open();

            string sql = "select * from Usuario where nome = '" + user + "' and senha = '" + password + "'";

            MySqlCommand command = new MySqlCommand(sql, conn);
            MySqlDataReader reader = command.ExecuteReader();

            bool result = reader.Read();
            conn.Close();

            return result;
        }
    }
}