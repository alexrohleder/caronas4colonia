<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="master.aspx.cs" Inherits="Caronas4Colonia.master" %>

<!DOCTYPE html>

<html>
    <head runat="server">
        <title>Caronas4Colonia</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <asp:ContentPlaceHolder id="MainContent" runat="server"></asp:ContentPlaceHolder>
                </div>
            </div>
        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </body>
</html>
