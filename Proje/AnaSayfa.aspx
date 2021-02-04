<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="OgrenciKayitWeb.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">id</th>
                <th scope="col">NUMARA</th>
                <th scope="col">AD</th>
                <th scope="col">SOYAD</th>
                <th scope="col">TELEFON</th>
                <th scope="col">MAIL</th>
                <th scope="col">ŞIFRE</th>
                <th scope="col">IŞLEMLER</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th scope="row"><%# Eval("Ogrid") %></th>
                        <td><%# Eval("OgrNumara") %></td>
                        <td><%# Eval("OgrAd") %></td>
                        <td><%# Eval("OgrSoyad") %></td>
                        <td><%# Eval("OgrTelefon") %></td>
                        <td><%# Eval("OgrMail") %></td>
                        <td><%# Eval("OgrSifre") %></td>
                        <td>
                            <asp:HyperLink ID="HplSşl" runat="server" NavigateUrl='<%#"~/OgrSil.aspx?Ogrid="+Eval("Ogrid")%>' CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink ID="HplGuncelle" runat="server" NavigateUrl='<%#"~/OgrGuncelle.aspx?Ogrid="+Eval("Ogrid")%>' CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
