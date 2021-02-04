<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListe.aspx.cs" Inherits="OgrenciKayitWeb.NotListe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">id</th>
                <th scope="col">AD SOYAD</th>
                <th scope="col">DERS ADI</th>
                <th scope="col">VİZA</th>
                <th scope="col">FİNAL</th>
                <th scope="col">BÜT</th>
                <th scope="col">ORTALAMA</th>
                <th scope="col">DURUM</th>
                <th scope="col">GÜNCELLE</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th scope="row"><%# Eval("Ogrenciid") %></th>
                        <td><%# Eval("OgrenciAdSoyad") %></td>
                        <td><%# Eval("DersAd") %></td>
                        <td><%# Eval("Viza") %></td>
                        <td><%# Eval("Final") %></td>
                        <td><%# Eval("But") %></td>
                        <td><%# Eval("Ortalama") %></td>
                        <td><%# Eval("Durum") %></td>

                        <td>
                            <asp:HyperLink ID="HplGuncelle" runat="server" NavigateUrl='<%#"~/NotGuncelle.aspx?Notid="+Eval("Notid")%>' CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
