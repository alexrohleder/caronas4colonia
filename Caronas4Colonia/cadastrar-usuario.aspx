<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastrar-usuario.aspx.cs" Inherits="Caronas4Colonia.cadastrar_usuario" %>

<!DOCTYPE html>

<html>
    <head runat="server">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="jumbotron">
                        <h1>Cadastrar-se</h1>
                        <p>Crie sua nova conta</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <form runat="server">
                        <div class="form-group">
                            <label for="Usuario" class="control-label">Usuário</label>
                            <asp:TextBox id="Usuario" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Senha" class="control-label">Senha</label>
                            <asp:TextBox id="Senha" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <asp:Button id="submit" OnClick="CreateUser" Text="Cadastrar" runat="server" CssClass="btn btn-primary"></asp:Button>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </body>
</html>
