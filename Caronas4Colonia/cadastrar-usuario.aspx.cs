using Caronas4Colonia.Repositories;
using System;
using System.Web.UI.WebControls;

namespace Caronas4Colonia
{
    public partial class cadastrar_usuario : System.Web.UI.Page
    {
        protected void CreateUser(object sender, EventArgs e)
        {
            UsuarioRepository.Create(Usuario.Text, Senha.Text);
        }
    }
}