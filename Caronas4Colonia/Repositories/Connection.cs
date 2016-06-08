using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Caronas4Colonia.Repositories
{
    public class Connection
    {
        private static string connection = @"server=localhost; database=caronas4colonia; uid=root; pwd=root";

        public static MySqlConnection getConn()
        {
            return new MySqlConnection(connection);
        }
    }
}