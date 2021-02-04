<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GidenMesaj.aspx.cs" Inherits="OgrenciKayitWeb.GidenMesaj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">id</th>
                <th scope="col">ALICI</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">İÇERİK</th>
                <th scope="col">TAHIH</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th scope="row"><%# Eval("Mesajid") %></th>
                        <td><%# Eval("Alici") %></td>
                        <td><%# Eval("Baslik") %></td>
                        <td><%# Eval("icerik") %></td>
                        <td><%# Eval("Tarih") %></td>
                        <%-- <td>
                            <asp:HyperLink ID="HplSil" NavigateUrl='<%#"DuyuruSil.aspx?Duyuruid="+Eval("Duyuruid") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                             <asp:HyperLink ID="HplGuncelle" NavigateUrl='<%#"DuyuruGuncelle.aspx?Duyuruid="+Eval("Duyuruid") %>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>--%>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
