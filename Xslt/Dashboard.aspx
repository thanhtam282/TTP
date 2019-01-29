<%@ Page Language="c#" MaintainScrollPositionOnPostback="true" CodeBehind="Dashboard.aspx.cs"
    MasterPageFile="~/App_MasterPages/layout.Master" AutoEventWireup="false" Inherits="CanhCam.Web.AccountUI.DashboardPage" %>

<%@ Register TagPrefix="Site" TagName="AccountMenu" Src="~/Account/AccountMenu.ascx" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="MPContent" runat="server">
	<div class="container">
		<div class="row">
			<Site:AccountMenu ID="accountMenu" runat="server" />
			<div class="col-lg-9">
				<div class="user-page">
					<h1 class="postname">
						<asp:Literal ID="litHeading" runat="server" />
					</h1>
					<div class="row">
						<div class="col-12">
							<div class="account-info">
								<h2 class="posttitle">
									<asp:Literal ID="liTitle" runat="server" />
								</h2>
								<asp:HyperLink ID="lnkProfileEdit" runat="server" CssClass="link"></asp:HyperLink>
								<div class="info-detail">
									<div class="row">
										<div class="col-md-6">
											<div class="group">
												<div class="label">
													<asp:Literal ID="litFullNameLB" runat="server" />:
												</div>
												<div class="detail">
													<asp:Literal ID="litFullName" runat="server" />
												</div>
											</div>
											<div class="group">
												<div class="label">Email</div>
												<div class="detail">
													<asp:Literal ID="litEmail" runat="server" />
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="group">
												<div for="" class="label">
													<asp:Literal ID="litPoint" runat="server" />:
												</div>
												<div class="detail point">
													<asp:Literal ID="litCurrentPoints" runat="server" />
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12">
							<div class="cart-history">
								<h2 class="posttitle">
									<asp:Literal ID="litOrdered" runat="server" />
								</h2>
								<asp:HyperLink ID="lnkAllOrders" runat="server" CssClass="link" Text="Xem tất cả"></asp:HyperLink>
								<asp:Xml ID="xmlTransformer" runat="server"></asp:Xml>
							</div>
						</div>
						<div class="col-12">
							<div class="address-info">
								<h2 class="posttitle">
									<asp:Literal ID="litAddress" runat="server" />
								</h2>
								<asp:HyperLink ID="lnkAddress" runat="server" CssClass="link" Text="Xem tất cả"></asp:HyperLink>
								<div class="address-list">
									<asp:Repeater ID="rptAddress" runat="server">
										<ItemTemplate>
											<div class="address-col">
												<div class="address default dashboard-account">
													<div class="type">
														<%# CanhCam.Web.AccountUI.AccountHelper.GetIsDefaultText(Convert.ToBoolean(Eval("IsDefault")))%>
													</div>
													<div class="name">
														<%#Eval("FirstName")%>
													</div>
													<div class="addr-detail">
														<ul>
															<li>
																<asp:Literal ID="litAddressLb" runat="server" Text="<%$Resources:AccountResources, AddressText %>" />
																:
																<%# FormatAddress(Eval("Address").ToString(), Eval("ProvinceGuid").ToString(), Eval("DistrictGuid").ToString(), Eval("WardGuid").ToString())%>
															</li>
															<li>
																<asp:Literal ID="Literal1" runat="server" Text="<%$Resources:AccountResources, PhoneText %>" />
																:
																<%#Eval("Phone")%>
															</li>
														</ul>
													</div>
													<a href='<%# SiteRoot + "/Account/AddressEdit.aspx?id=" + Eval("AddressId").ToString() %>' class="btn-editaddr">
														<asp:Literal ID="Literal2" runat="server" Text="<%$Resources:AccountResources, EditText %>" /></a>
												</div>
											</div>
										</ItemTemplate>
									</asp:Repeater>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		var listaddress = $(".dashboard-account");
		$(".dashboard-account").removeClass("default");
		$.each(listaddress, function () {
			var type = $(this).find(".type").first().text();
			if (type.length > 0)
				$(this).addClass("default");
		});

	</script>
</asp:Content>
