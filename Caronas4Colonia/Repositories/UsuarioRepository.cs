using System;
using MySql.Data.MySqlClient;

namespace Caronas4Colonia.Repositories
{
    public class UsuarioRepository : AbstractRepository
    {
        override
        protected string getTable()
        {
            return "Usuario";
        }

        public bool Authenticate(String user, String password)
        {
            return exists($"nome = \"{user}\" and senha = \"{password}\"");
        }

        public void Create(String user, String password)
        {
            string sql = $"insert into usuario (nome, senha) values (\"{user}\", \"{password}\")";

            executeNonQuery(sql);
        }
    }
}