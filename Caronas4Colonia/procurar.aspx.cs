using Caronas4Colonia.Repositories;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Caronas4Colonia
{
    public partial class procurar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            populateDropdownList();
            populateSearchTable();
        }

        protected void populateDropdownList()
        {
            CidadeRepository CidadeRepository = new CidadeRepository();
            MySqlDataReader cidades = CidadeRepository.all("");

            while (cidades.Read())
            {
                ListItem item = new ListItem();

                item.Text = cidades["nome"].ToString();
                item.Value = cidades["id_cidade"].ToString();

                CidadeDestino.Items.Add(item);
                CidadeSaida.Items.Add(item);
            }
        }

        protected void populateSearchTable()
        {
            CaronaRepository CaronaRepository = new CaronaRepository();
            MySqlDataReader caronas = CaronaRepository.all(
                Request["ctl00$ctl00$ContentPlaceHolder$ContentPlaceHolder$CidadeSaida"], 
                Request["ctl00$ctl00$ContentPlaceHolder$ContentPlaceHolder$CidadeDestino"]
            );
        }
    }
}