<%@ Page Title="" Language="C#" MasterPageFile="~/master.authenticated.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Caronas4Colonia.dashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <form runat="server">
        <div class="col-xs-12 col-md-6">

            <div class="page-header">
                <h1>Minhas Caronas <small>como motorista</small></h1>
            </div>
            <asp:Table ID="MinhasCaronasMotoristaTable" runat="server" CssClass="table table-responsive table-hover table-bordered">
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>As</asp:TableHeaderCell>
                    <asp:TableHeaderCell>De</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Para</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>

            <div class="page-header">
                <h1>Minhas Caronas <small>como passageiro</small></h1>
            </div>

            <asp:Table ID="MinhasCaronasPassageiroTable" runat="server" CssClass="table table-responsive table-hover table-bordered">
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>As</asp:TableHeaderCell>
                    <asp:TableHeaderCell>De</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Para</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>

        </div>
        <div class="col-xs-12 col-md-6">

            <div class="page-header">
                <h1>Cadastrar</h1>
            </div>
            <!--
             <div class="form-group">
                <label>Horário de Saída</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            -->
            <div class="form-group">
                <label>Cidade de Saída</label>
                <asp:DropDownList ID="CidadeSaida" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>

            <div class="form-group">
                <label>Cidade de Destino</label>
                <asp:DropDownList ID="CidadeDestino" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>

            <asp:Button ID="ButtonCadastrar" runat="server" Text="Cadastrar" CssClass="btn btn-primary pull-right" />

        </div>
    </form>
</asp:Content>
