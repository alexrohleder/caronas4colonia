using System;
using System.Web.Security;

namespace Caronas4Colonia
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();

            Response.Redirect("login.aspx");
        }
    }
}