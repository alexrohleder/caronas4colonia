using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Caronas4Colonia.Repositories
{
    public class CaronaRepository : AbstractRepository
    {
        protected string queryWithJoins = "select a.*, b.nome cidade_destino, c.nome cidade_origem from carona a "
            + "join cidade b on a.id_cidade_destino = b.id_cidade "
            + "join cidade c on a.id_cidade_origem = c.id_cidade";

        override protected string getTable()
        {
            return "carona";
        }

        public MySqlDataReader allFromMotorista(int userId)
        {
            string query = queryWithJoins + " where a.id_motorista = " + userId;

            return execute(query);
        }

        public MySqlDataReader all(string cidadeOrigem = null, string cidadeDestino = null)
        {
            string query = queryWithJoins + " where 1 = 1";

            if (cidadeOrigem != null)
            {
                query += " and a.id_cidade_origem = " + cidadeOrigem;
            }

            if (cidadeDestino != null)
            {
                query += " and a.id_cidade_destino = " + cidadeDestino;
            }

            return execute(query);
        }

        public MySqlDataReader asPassageiro(int id)
        {
            string query = "select a.* from carona a join passageiro b on a.id_carona = b.id_carona where b.id_usuario = " + id;

            return execute(query);
        }
    }
}