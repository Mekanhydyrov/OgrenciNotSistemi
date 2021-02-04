<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrEkle.aspx.cs" Inherits="OgrenciKayitWeb.OgrEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" id="form1">
        <div class="form-group">
            <div>
                <asp:TextBox ID="TxtOgrAd" runat="server" placeholder="Öğrenci Adı" CssClass="form-control"></asp:TextBox>
               <br />
                <asp:TextBox ID="TxtOgrSoyad" runat="server" placeholder="Öğrenci Soyadı" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:TextBox ID="TxtOgrTelefon" runat="server" placeholder="Öğrenci Telefon" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:TextBox ID="TxtOgrMail" runat="server" placeholder="Öğrenci Mail" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:TextBox ID="TxtOgrSifre" runat="server" placeholder="Öğrenci Şifre" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:TextBox ID="TxtOgrFotograf" runat="server" placeholder="Öğrenci Fotograf Link" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="BtnEkle" runat="server" CssClass="btn btn-info" Text="Öğrenici Ekle" OnClick="BtnEkle_Click" />
    </form>

</asp:Content>
