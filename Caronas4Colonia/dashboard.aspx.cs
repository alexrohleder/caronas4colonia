using System;
using Caronas4Colonia.Repositories;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;

namespace Caronas4Colonia
{
    public partial class dashboard : System.Web.UI.Page
    {
        CidadeRepository CidadeRepository = new CidadeRepository();
        CaronaRepository CaronaRepository = new CaronaRepository();

        protected void Page_Load(object sender, EventArgs e)
        {
            populateDropdownList();
            populateCaronasComoMotoristaTable();
        }

        protected void populateDropdownList()
        {
            MySqlDataReader cidades = CidadeRepository.all();

            while (cidades.Read())
            {
                ListItem item = new ListItem();

                item.Text = cidades["nome"].ToString();
                item.Value = cidades["id_cidade"].ToString();

                CidadeDestino.Items.Add(item);
                CidadeSaida.Items.Add(item);
            }
        }

        protected void populateCaronasComoMotoristaTable()
        {
            MySqlDataReader caronasComoMotorista = CaronaRepository.allFromMotorista(1);

            while (caronasComoMotorista.Read())
            {
                MinhasCaronasMotoristaTable.Rows.Add(getTableRow(caronasComoMotorista));
            }
        }

        protected void populateCaronasComoPassageiroTable()
        {
            MySqlDataReader caronasComoPassageiro = CaronaRepository.asPassageiro(1);

            while (caronasComoPassageiro.Read())
            {
                MinhasCaronasPassageiroTable.Rows.Add(getTableRow(caronasComoPassageiro));
            }
        }

        protected TableRow getTableRow(MySqlDataReader reader)
        {
            TableRow row = new TableRow();

            TableCell idCell   = new TableCell();
            TableCell asCell   = new TableCell();
            TableCell deCell   = new TableCell();
            TableCell paraCell = new TableCell();

            idCell.Text   = reader["id_carona"].ToString();
            asCell.Text   = reader["data_hora_partida"].ToString();
            deCell.Text   = reader["cidade_origem"].ToString();
            paraCell.Text = reader["cidade_destino"].ToString();

            row.Cells.Add(idCell);
            row.Cells.Add(asCell);
            row.Cells.Add(deCell);
            row.Cells.Add(paraCell);

            return row;
        }
    }
}