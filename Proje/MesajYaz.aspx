<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajYaz.aspx.cs" Inherits="OgrenciKayitWeb.MesajYaz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:Label for="TxtGonderen" runat="server" Text="Gönderen"></asp:Label>
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtAlici" runat="server" Text="Alıcı"></asp:Label>
            <asp:TextBox ID="TxtAlici" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <br />
        <div>
            <asp:Label for="TxtBaslik" runat="server" Text="Mesaj Başlık"></asp:Label>
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="Txticerik" runat="server" Text="Mesaj içerik"></asp:Label>
            <textarea id="Txticerik" cols="20" rows="10" class="form-control" runat="server"></textarea>
        </div>
        <br />
        <asp:Button ID="BtnGonder" runat="server" CssClass="btn btn-info" Text="Mesaj Gönder" OnClick="BtnGonder_Click"/>
    </form>

</asp:Content>
