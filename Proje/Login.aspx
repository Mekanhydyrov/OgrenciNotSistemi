<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OgrenciKayitWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Login/LoginPanel.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="kapsayci">
            <br /><br /><h1>Mr.Robot Kurs Merkezi</h1>
            <div class="txt-info">
                <asp:TextBox class="TxtNo" runat="server" placeholder="Kullanıcı No" ID="TxtNo"></asp:TextBox>
                <asp:TextBox class="TxtSifre" runat="server" TextMode="Password" placeholder="Kullanıcı Şifre" ID="TxtSifre"></asp:TextBox>
                <asp:Button class="BtnOgrenci" runat="server" Text="Öğrenci Giriş" ID="BtnOgrenci" OnClick="BtnOgrenci_Click" />
                <asp:Button class="BtnOgretmen" runat="server" Text="Öğretmen Giriş" ID="BtnOgrtGiris" OnClick="BtnOgrtGiris_Click" />
                <div class="Btn-info">
                    <asp:Button class="BtnSiremiUnuttum" runat="server" Text="Şifremi Unuttum" ID="BtnUnuttum" />
                    <asp:Button class="BtnYardim" runat="server" Text="Yardım" ID="BtnYardim" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
