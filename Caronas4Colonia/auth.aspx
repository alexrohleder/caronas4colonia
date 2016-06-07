<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="auth.aspx.cs" Inherits="Caronas4Colonia.index" %>

<!doctype html>

<html lang="pt-br">
    <head runat="server">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h1>Login</h1>
                    <form runat="server">
                        <asp:Login id="LoginForm" runat="server" OnAuthenticate="Authenticate"></asp:Login>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </body>
</html>
