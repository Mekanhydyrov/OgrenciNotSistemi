<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="OgrenciKayitWeb.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">DERS id</th>
                <th scope="col">DERS ADI</th>           
                <th scope="col">IŞLEMLER</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th scope="row"><%# Eval("Dersid") %></th>
                        <td><%# Eval("DersAd") %></td>
                        <td>
                            <asp:HyperLink ID="HplSil" NavigateUrl='<%#"DersSil.aspx?Dersid="+Eval("Dersid") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                             <asp:HyperLink ID="HplGuncelle" NavigateUrl='<%#"DersGuncelle.aspx?Dersid="+Eval("Dersid") %>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <asp:HyperLink ID="HyperLink1" NavigateUrl="DersEkle.aspx" CssClass="btn btn-info" runat="server">Ders Ekle</asp:HyperLink>
</asp:Content>
