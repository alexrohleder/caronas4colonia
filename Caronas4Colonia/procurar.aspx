<%@ Page Title="" Language="C#" MasterPageFile="~/master.authenticated.master" AutoEventWireup="true" CodeBehind="procurar.aspx.cs" Inherits="Caronas4Colonia.procurar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <form runat="server">
        <div class="well">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-4">
                        <label>Saindo de</label>
                        <asp:dropdownlist id="CidadeSaida" runat="server" CssClass="form-control"></asp:dropdownlist>
                    </div>
                    <div class="col-xs-4">
                        <label>Chegando em</label>
                        <asp:dropdownlist id="CidadeDestino" runat="server" CssClass="form-control"></asp:dropdownlist>
                    </div>
                    <div class="col-xs-4">
                        <br />
                        <asp:button runat="server" text="Pesquisar" CssClass="btn btn-primary" style="margin-top: 5px" />
                    </div>
                </div>
            </div>
        </div>

        <hr />

        <asp:table runat="server" class="table table-reponsive table-hover table-bordered">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                <asp:TableHeaderCell>As</asp:TableHeaderCell>
                <asp:TableHeaderCell>De</asp:TableHeaderCell>
                <asp:TableHeaderCell>Para</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:table>
    </form>
</asp:Content>
