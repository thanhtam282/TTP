<%@ Page Language="c#" MaintainScrollPositionOnPostback="true" CodeBehind="Address.aspx.cs"
    MasterPageFile="~/App_MasterPages/layout.Master" AutoEventWireup="false" Inherits="CanhCam.Web.AccountUI.AddressPage" %>


<%@ Register TagPrefix="Site" TagName="AccountMenu" Src="~/Account/AccountMenu.ascx" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="MPContent" runat="server">
    <div class="container">
        <div class="row flex flex-wrap">
            <Site:AccountMenu ID="accountMenu" runat="server" />
            <div class="col-12 col-lg-9">
                <div class="user-page clearfix">
                    <h1 class="postname">
                        <asp:Literal ID="litHeading" Text="Sổ địa chỉ" runat="server" />
                    </h1>
                    <asp:HyperLink ID="lnkInsert" runat="server" CssClass="btn-addaddr" Text="Thêm địa chỉ"></asp:HyperLink>
                    <div class="row flex flex-wrap">
                        <div class="col-12">
                            <section class="address-info clearfix">
                                <div class="address-list flex flex-wrap clearfix">
                                    <asp:Repeater ID="rptAddress" runat="server">
                                        <ItemTemplate>
                                            <div class="address-col">
                                                <div class="address default clearfix">
                                                    <div class="type"><%# CanhCam.Web.AccountUI.AccountHelper.GetIsDefaultText(Convert.ToBoolean(Eval("IsDefault")))%></div>
                                                    <div class="name"><%#Eval("FirstName")%></div>
                                                    <div class="addr-detail">
                                                        <ul>
                                                            <li>
                                                                <asp:Literal ID="litAddressLb" runat="server" Text="<%$Resources:AccountResources, AddressText %>" />
                                                                : <%# FormatAddress(Eval("Address").ToString(), Eval("ProvinceGuid").ToString(), Eval("DistrictGuid").ToString(), Eval("WardGuid").ToString())%></li>
                                                            <li>
                                                                <asp:Literal ID="Literal1" runat="server" Text="<%$Resources:AccountResources, PhoneText %>" />
                                                                : <%#Eval("Phone")%></li>
                                                        </ul>
                                                    </div>
                                                    <a href='<%# SiteRoot + "/Account/AddressEdit.aspx?id=" + Eval("AddressId").ToString() %>' class="btn-editaddr">
                                                        <asp:Literal ID="Literal2" runat="server" Text="<%$Resources:AccountResources, EditText %>" /></a>
                                                    <asp:HiddenField ID="hdfIsDefault" Value='<%# Convert.ToBoolean(Eval("IsDefault")) %>' runat="server" />
                                                    <asp:LinkButton ID="hplDeleteAddress" Visible="false" CommandName="DeleteAddress" CommandArgument='<%#Eval("AddressId")%>' CssClass="btn-deleteaddr" Text="<%$Resources:ProductResources, ProductEditDeleteButton %>" runat="server" />
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
