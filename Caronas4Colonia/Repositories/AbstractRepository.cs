using MySql.Data.MySqlClient;
using System;

namespace Caronas4Colonia.Repositories
{
    public abstract class AbstractRepository
    {

        protected static MySqlConnection conn;

        public AbstractRepository()
        {
            if (conn == null)
            {
                conn = new MySqlConnection("server=localhost; database=caronas4colonia; uid=root; pwd=root");
                conn.Open();
            }
        }

        ~AbstractRepository()
        {
            conn.Close();
        }

        protected abstract string getTable();

        public MySqlDataReader execute(string query)
        {
            conn.Close();
            conn.Open();

            MySqlCommand command = new MySqlCommand(query, conn);

            return command.ExecuteReader();
        }

        public void executeNonQuery(string sql)
        {
            conn.Close();
            conn.Open();

            MySqlCommand command = new MySqlCommand(sql, conn);
            command.ExecuteNonQuery();
        }

        public MySqlDataReader get(string fields, string where = "")
        {
            string query = "select " + fields + " from " + getTable() + " where 1 = 1";

            if (where != "") {
                query += " and " + where;
            }

            return execute(query);
        }

        public MySqlDataReader all(string where = "")
        {
            return get("*", where);
        }

        public bool exists(string where)
        {
            return all(where).Read();
        }

    }
}