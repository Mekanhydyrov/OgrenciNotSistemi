<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrMsjYaz.aspx.cs" Inherits="OgrenciKayitWeb.OgrMsjYaz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" >
        <div class="form-group">
            <asp:Label ID="label1" runat="server" Text="Gönderen"></asp:Label>
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Alıcı"></asp:Label>
            <asp:TextBox ID="TxtAlici" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Mesaj Başlık"></asp:Label>
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Mesaj içerik"></asp:Label>
            <textarea id="Txticerik" cols="20" rows="10" class="form-control" runat="server"></textarea>
        </div>
        <asp:Button ID="BtnGonder" runat="server" CssClass="btn btn-info" Text="Mesaj Gönder" OnClick="BtnGonder_Click" />
    </form>

</asp:Content>
