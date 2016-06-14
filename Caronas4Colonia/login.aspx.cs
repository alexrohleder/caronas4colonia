using Caronas4Colonia.Repositories;
using System;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace Caronas4Colonia
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Authenticate(object sender, AuthenticateEventArgs e)
        {
            UsuarioRepository UsuarioRepository = new UsuarioRepository();

            if (UsuarioRepository.Authenticate(LoginForm.UserName, LoginForm.Password))
            {
                e.Authenticated = true;

                FormsAuthentication.RedirectFromLoginPage(LoginForm.UserName, false);
            }
            else
            {
                e.Authenticated = false;
            }
        }

        protected void CreateUser(object sender, EventArgs e)
        {
            // UsuarioRepository.Create(Usuario.Text, Senha.Text);
        }
    }
}