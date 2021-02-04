<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="OgrenciKayitWeb.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:Label for="DropDownList1" runat="server" Text="Duyuru Öğretmen"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TxtBaslik" runat="server" placeholder="Duyuru Başlık" CssClass="form-control"></asp:TextBox>
            <br />
            <textarea id="TextArea1" cols="20" rows="10" placeholder="Duyuru İçerik" class="form-control" runat="server"></textarea>
        </div>
        <br />
        <asp:Button ID="BtnEkle" runat="server" CssClass="btn btn-info" Text="Duyuru Ekle" OnClick="BtnEkle_Click" />
    </form>

</asp:Content>
