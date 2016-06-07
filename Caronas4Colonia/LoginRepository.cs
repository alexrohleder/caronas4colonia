using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Caronas4Colonia
{
    public class LoginRepository : Connection
    {
        public static bool Authenticate(String user, String password)
        {
            MySqlConnection conn = getConn();

            try
            {
                conn.Open();

                string sql = "select * from Usuario where nome = '" + user + "' and senha = '" + password + "'";

                MySqlCommand command   = new MySqlCommand(sql, conn);
                MySqlDataReader reader = command.ExecuteReader();

                conn.Close();

                if (reader.Read())
                {
                    return true;
                }
            } catch (Exception e) { }

            return false;
        }
    }
}