<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrGuncelle.aspx.cs" Inherits="OgrenciKayitWeb.OgrGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" id="form1">
        <div class="form-group">
             <div>
                <asp:Label for="TxtOgrid" runat="server" Text="Öğrenci id"></asp:Label>
                <asp:TextBox ID="TxtOgrid" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>
            <div>
                <asp:Label for="TxtOgrAd" runat="server" Text="Öğrenci Adı"></asp:Label>
                <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>
            <div>
                <asp:Label for="TxtOgrSoyad" runat="server" Text="Öğrenci Soyadı"></asp:Label>
                <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
                <br />

            </div>
            <div>
                <asp:Label for="TxtOgrTelefon" runat="server" Text="Öğrenci Telefon"></asp:Label>
                <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>
            <div>
                 <asp:Label for="TxtOgrMail" runat="server" Text="Öğrenci Mail"></asp:Label>
                <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>
            <div>
                <asp:Label for="TxtOgrSifre" runat="server" Text="Öğrenci Şifre"></asp:Label>
                <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>
            <div>
                <asp:Label for="TxtOgrFotograf" runat="server" Text="Öğrenci Fotograf Link"></asp:Label>
                <asp:TextBox ID="TxtOgrFotograf" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="BtnGuncelle" runat="server" CssClass="btn btn-primary" Text="Öğrenici Güncelle" OnClick="BtnGuncelle_Click" />
    </form>

</asp:Content>
