<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrBilgiGuncelle.aspx.cs" Inherits="OgrenciKayitWeb.OgrBilgiGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Oğrenci Numarası"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Ad Soyad"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Telefon"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Mail"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Şifre"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Şifre Tekrar"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Fotograf"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
        </div>     
         <asp:Button ID="BtnBilgiGuncelle" runat="server" CssClass="btn btn-success" Text="Bilği Güncelle" OnClick="BtnBilgiGuncelle_Click"/>
    </form>


</asp:Content>
