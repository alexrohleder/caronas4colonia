using System;
using MySql.Data.MySqlClient;

namespace Caronas4Colonia.Repositories
{
    public class UsuarioRepository : Connection
    {
        public static void Create(String nome, String senha)
        {
            MySqlConnection conn = getConn();

            conn.Open();

            string sql = "insert into Usuario (nome, senha) values ('" + nome + "', '" + senha + "')";

            MySqlCommand command = new MySqlCommand(sql, conn);
            command.ExecuteNonQuery();

            conn.Close();
        }
    }
}