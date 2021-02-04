<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="OgrenciKayitWeb.DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:Label for="TxtDuyuruid" runat="server" Text="Duyuru id"></asp:Label>
            <asp:TextBox ID="TxtDuyuruid" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtBaslik" runat="server" Text="Duyuru Başlık"></asp:Label>
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TextArea1" runat="server" Text="Duyuru İçerik"></asp:Label>
            <textarea id="TextArea1" cols="20" rows="10" class="form-control" runat="server"></textarea>
        </div>
        <br />
        <asp:Button ID="BtnGunclle" runat="server" CssClass="btn btn-primary" Text="Duyuru Güncelle" OnClick="BtnGunclle_Click"/>
    </form>

</asp:Content>
