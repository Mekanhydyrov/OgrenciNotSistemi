<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="OgrenciKayitWeb.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:Label for="TxtDersAd" runat="server" Text="Ders Adı"></asp:Label>
            <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrid" runat="server" Text="Öğrenci id"></asp:Label>
            <asp:TextBox ID="TxtOgrid" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrAdSoyad" runat="server" Text="Öğrenci Ad Soyad"></asp:Label>
            <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtViza" runat="server" Text="Viza"></asp:Label>
            <asp:TextBox ID="TxtViza" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtFinal" runat="server" Text="Final"></asp:Label>
            <asp:TextBox ID="TxtFinal" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtBut" runat="server" Text="Büt"></asp:Label>
            <asp:TextBox ID="TxtBut" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOrtalama" runat="server" Text="Ortalama"></asp:Label>
            <asp:TextBox ID="TxtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtDurum" runat="server" Text="Durum"></asp:Label>
            <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnHesapla" runat="server" CssClass="btn btn-toolbar" Text="Final Hesapla" OnClick="BtnHesapla_Click" />
         <asp:Button ID="Button1" runat="server" CssClass="btn bg-warning" Text="Büt Hesapla" OnClick="Button1_Click" />
        <asp:Button ID="BtnGunclle" runat="server" CssClass="btn btn-primary" Text="Duyuru Güncelle" OnClick="BtnGunclle_Click" />
    </form>

</asp:Content>
