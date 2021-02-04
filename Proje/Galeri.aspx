<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="OgrenciKayitWeb.Galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="container-fluid">
        <div class="px-lg-5">

            <div class="row">
                <!-- Gallery item -->

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                            <div class="bg-white rounded shadow-sm" id="txt-info">
                                <img src="<%#Eval("OgrFotograf") %>" id="img-info">
                                <div class="p-4">
                                    <h5><a href="#" class="text-dark"> <%#Eval("OgrAd") %> <%#Eval("OgrSoyad") %></a></h5>
                                    <p class="small text-muted mb-0"><%#Eval("OgrNumara") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <!-- End -->
            </div>
        </div>
    </div>

</asp:Content>
