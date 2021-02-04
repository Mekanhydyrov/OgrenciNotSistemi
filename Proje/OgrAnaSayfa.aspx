<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrAnaSayfa.aspx.cs" Inherits="OgrenciKayitWeb.OgrAnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            <br />
        </div>     
         <asp:Button ID="BtnGunclle" runat="server" CssClass="btn btn-primary" Text="Güncelle" OnClick="BtnGunclle_Click"/>
    </form>

</asp:Content>
