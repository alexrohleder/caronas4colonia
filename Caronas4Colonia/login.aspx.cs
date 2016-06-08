using Caronas4Colonia.Repositories;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace Caronas4Colonia
{
    public partial class login : System.Web.UI.Page
    {
        protected void Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (LoginRepository.Authenticate(LoginForm.UserName, LoginForm.Password))
            {
                e.Authenticated = true;

                FormsAuthentication.RedirectFromLoginPage(LoginForm.UserName, false);
            }
            else
            {
                e.Authenticated = false;
            }
        }
    }
}