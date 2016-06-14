<%@ Page 
    Title="Bem vindo - Caronas4Colonia" 
    Language="C#" 
    MasterPageFile="~/master.Master" 
    AutoEventWireup="true" 
    CodeBehind="login.aspx.cs" 
    Inherits="Caronas4Colonia.login1" 
%>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    </style>
</asp:Content>

<asp:Content id="asd" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <form runat="server">
        <div class="col-xs-12 col-md-6">
            <div class="page-header">
                <h1>Entrar</h1>
            </div>
            <asp:Login ID="LoginForm" runat="server" Width="100%" OnAuthenticate="Authenticate">
                <LayoutTemplate>
                    <div class="form">
                        <div class="form-group">
                            <asp:Label id="UserNameLabel" runat="server" AssociatedControlID="UserName">Nome</asp:Label>
                            <asp:TextBox id="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Senha</asp:Label>
                            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator id="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="LoginForm">*</asp:RequiredFieldValidator>
                        </div>
                        <asp:Button id="LoginButton" runat="server" CommandName="Login" Text="Entrar" ValidationGroup="LoginForm" CssClass="btn btn-primary pull-right" />
                    </div>
                </LayoutTemplate>
            </asp:Login>
        </div>
        <div class="col-xs-12 col-md-6">
            <div class="page-header">
                <h1>Cadastro</h1>
            </div>
            <div class="form-group">
                <label for="Usuario" class="control-label">Usuário</label>
                <asp:TextBox id="Usuario" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="Senha" class="control-label">Senha</label>
                <asp:TextBox id="Senha" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button id="submit" OnClick="CreateUser" Text="Cadastrar" runat="server" CssClass="btn btn-primary pull-right"></asp:Button>
        </div>
    </form>
</asp:Content>
