<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="OgrenciKayitWeb.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form runat="server" class="form-group">
        <br />
        <div>
            <asp:Label for="TxtDersAd" runat="server" Text="Ders Adı"></asp:Label>
            <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnGuncelle" runat="server" CssClass="btn btn-info" Text="Ders Güncelle" OnClick="BtnGuncelle_Click" />
    </form>

</asp:Content>
