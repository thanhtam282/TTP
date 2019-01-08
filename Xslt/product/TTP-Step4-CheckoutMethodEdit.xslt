<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/CheckoutMethod/Shipping)>0">
			<div class="cart-title">
				<h3><span class="fas fa-shopping-cart"></span><span>Phương thức thanh toán</span></h3>
			</div>
			<div class="cart-payment-method">
				<xsl:apply-templates select="/CheckoutMethod/Shipping"></xsl:apply-templates>
			</div>
		</xsl:if>

		<xsl:if test="count(/CheckoutMethod/Payment)>0">
			<div class="cart-title">
				<h3><span class="fas fa-shopping-cart"></span><span>Phương thức thanh toán</span></h3>
			</div>
			<div class="cart-payment-method">
				<xsl:apply-templates select="/CheckoutMethod/Payment"></xsl:apply-templates>
			</div>
			<!-- <xsl:if test="Id=3"> -->
			<div class="cart-title">
				<!-- <h3><span class="fas fa-shopping-cart"></span> -->
				<h3><span>ĐIỀU KHOẢN VÀ ĐIỀU KIỆN</span>
				</h3>
			</div>
			<div class="cart-payment-method">
				<div style="width:100%;height:250px;line-height:1.4em;overflow:auto;padding:10px; border: 1px solid #ddd;background: white">
					<b> I - QUY ĐỊNH VỀ VIỆC SỬ DỤNG TRANG WEB</b>
					<p>Thông qua Trang Web, chúng tôi đồng ý và tôn trọng việc Khách hàng tìm kiếm, tham khảo, hiển thị nội
						dung thông tin có trên Trang Web trên màn hình máy tính, việc mua sắm trực tuyến của Khách Hàng tại mọi
						thời điểm với điều kiện là các hoạt động đó của Quý Khách Hàng phải phù hợp với Điều Khoản Và Điều Kiện và
						phù hợp với quy định của pháp luật Việt Nam.</p>
					<p>Quý Khách vui lòng không sử dụng Trang Web của chúng tôi cho bất kỳ mục đích nào dưới đây:</p>
					<ul>
						<li>Đưa ra những nhận xét, đánh giá có ý xúc phạm, quấy rối, bôi nhọ, đe dọa, làm phiền hoặc có bất cứ hành vi
							nào thiếu văn hóa đối với người khác.</li>
						<li>Đưa ra những nhận xét mang tính chính trị (ví dụ như tuyên truyền, chống phá, xuyên tạc Nhà nước Cộng hòa xã
							hội chủ nghĩa Việt Nam) hoặc mang tính kỳ thị tôn giáo, giới tính, sắc tộc, giai cấp.</li>
						<li>Tuyên truyền văn hoá phẩm đồi truỵ, có nội dung phản cảm hoặc trái quy định pháp luật.</li>
						<li>Phổ biến các tài liệu, khuyến khích người khác thực hiện các hành vi vi phạm pháp luật.</li>
						<li>Can thiệp vào quyền sử dụng hợp pháp Tài Khoản của Khách Hàng khác tại Trang Web.</li>
						<li>Thực hiện bất kỳ hành vi phạm pháp luật nào liên quan đến việc sử dụng internet, mạng viễn thông
							công cộng và/hoặc quyền sở hữu trí tuệ của bên thứ ba nói riêng và/hoặc bất kỳ hành vi vi phạm pháp luật
							nào khác.</li>
						<li>Thực hiện các hành vi hoặc tạo ra thông tin giả mạo, cố ý tạo sự nhầm lẫn giữa mình với Khách
							Hàng khác hoặc mạo danh Ban quản trị của Trang Web.</li>
						<li>Can thiệp, làm gián đoạn đường truyền internet hoặc các trang thông tin, trang web khác kết nối
							với Trang Web.</li>
						<li>Thực hiện bất kỳ hành vi nào bị cấm theo quy định của pháp luật Việt Nam.</li>
						<li>Nếu phát hiện bất kỳ hành vi nào nêu trên, chúng tôi có quyền ngay lập tức khoá hoặc huỷ bỏ
							Tài Khoản sử dụng của Quý Khách và áp dụng các biện pháp cần thiết khác theo quy định của
							pháp luật Việt Nam.</li>
						<li>Quý Khách Hàng sử dụng các trang thông tin điện tử kết nối với Trang Web của chúng tôi (nếu có) trên các mạng
							xã hội (như Facebook, Twitter v.v...) phù hợp với các điều khoản và điều kiện sử dụng của chúng tôi tại các
							trang thông tin điện tử, mạng xã hội đó và pháp luật Việt Nam.</li>
					</ul>
					<b>II - GIÁ CẢ, TỪ CHỐI ĐƠN HÀNG</b>
					<p>Chúng tôi cam kết chỉ hiển thị các hình ảnh thật của Sản Phẩm/ Hàng Hóa và cố gắng cung cấp Hàng
						Hoá/ Sản Phẩm chính hãng cho tất cả các Khách Hàng với chất lượng và giá cả hợp lý nhất.</p>
					<p>Tại thời điểm hoàn tất việc đặt hàng, Quý Khách sẽ được thông báo trên màn hình máy tính về
						tất cả chi phí mà Quý Khách phải thanh toán (bao gồm giá bán sản phẩm, thuế VAT, phí đóng gói và
						giao hàng và/ hoặc các phí khác, nếu có).</p>
					<p>Tại Trang Web, phần giá màu xám là mức giá bán của Sản Phẩm/Hàng Hóa do nhà cung cấp/ nhà phân phối khuyến
						nghị. Phần giá có màu đỏ là giá bán của Sản Phẩm/ Hàng Hóa trên Trang Web.</p>
					<p>Chúng tôi luôn cố gắng để đảm bảo tính chính xác của việc hiển thị giá cả trên Trang Web. Tuy nhiên, giá
						trị Đơn Hàng của Quý Khách Hàng sẽ được chúng tôi xác nhận lại như là một phần của thủ tục chấp nhận Đơn Hàng.
						Nếu giá trị của Đơn Hàng thay đổi trước khi chúng tôi chấp nhận Đơn Hàng của Quý Khách Hàng, chúng tôi sẽ liên
						lạc với Quý Khách Hàng để xác nhận rằng Quý Khách Hàng vẫn muốn tiếp tục mua hàng ở mức giá đã thay đổi.</p>
					<p>Trong trường hợp thật sự cần thiết (như trường hợp Bất Khả Kháng, sản phẩm không sẵn có vì bất kỳ lý do
						gì hoặc phù hợp với quy định của pháp luật), chúng tôi có quyền từ chối Đơn Hàng của Quý Khách Hàng.</p>
					<b>III- THANH TOÁN</b>
					<p>Chúng tôi hỗ trợ các phương thức thanh toán linh hoạt và an toàn cho tất cả các Khách Hàng mua sắm
						tại Trang Web bằng các hình thức sau:</p>
					<b>1. Thanh toán bằng tiền mặt khi nhận hàng (COD):</b>
					<p>Sau khi Quý Khách kiểm tra và nhận Hàng Hóa của Đơn Hàng đã đặt, Quý Khách Hàng sẽ thanh toán tiền hàng đã mua
						bằng tiền mặt cho chúng tôi. Chúng tôi chỉ chấp nhận thanh toán bằng tiền mặt khi nhận hàng đối với các Đơn Hàng
						có tổng giá trị dưới hai mươi (20) triệu đồng. Các Đơn Hàng có giá trị từ hai mươi (20) triệu đồng sẽ phải thanh
						toán bằng thẻ ngân hàng.</p>
					<b>2. Thanh toán bằng hình thức chuyển khoản:</b>
					<p>Trong quá trình đặt hàng, quý khách chọn hình thức thanh toán chuyển khoản trong phần Phương thức thanh toán.</p>
					<p>Điều kiện để chọn hình thức thanh toán chuyển khoản là thẻ ATM của quý khách đã được đăng ký sử dụng internet
						banking.</p>
					<p><em>* Qúy khách chuyển khoản vào tài khoản:</em></p>
					<p><b>CHỦ TÀI KHOẢN:</b> CÔNG TY TNHH BANYAN VIỆT NAM</p>
					<p><b>SỐ TÀI KHOẢN:</b> 31010002056497</p>
					<p><b>NGÂN HÀNG:</b> TMCP ĐẦU TƯ VÀ PHÁT TRIỂN VIỆT NAM<br />
						(BIDV) - CHI NHÁNH: HỒ CHÍ MINH</p>
				</div>
				<div class="agree" style="margin-top: .5rem">
				<input id="PaymentAgree" type="checkbox" checked="checked" name="PaymentAgree" aria-required=""/>
				<label for="PaymentAgree">Tôi đã đọc và đồng ý điều khoản trên</label>
				<!-- <label for="PaymentAgree">
						<xsl:value-of select="/CheckoutMethod/AgreeText"></xsl:value-of>
					</label> -->
				</div>
				</div>
			<!-- </xsl:if> -->
		</xsl:if>


		<div class="cart-button-checkout">
			<a class="btn btn-prev">
				<xsl:attribute name="href">
					<xsl:text>/cart</xsl:text>
				</xsl:attribute>
				<span class="mdi mdi-chevron-left"></span>
				<span>Quay lại</span>
			</a>
			<a class="btn btn-next">
				<xsl:attribute name="onclick">
					<xsl:text>AjaxCheckout.saveorder(true, '</xsl:text>
					<xsl:value-of select="/CheckoutMethod/NextPageUrl"></xsl:value-of>
					<xsl:text>');return false;</xsl:text>
				</xsl:attribute>
				<span>
					<!-- <xsl:value-of select="/CheckoutAddress/ContinueShoppingText"></xsl:value-of> -->
					Tiếp tục
				</span>
				<span class="mdi mdi-chevron-right"></span>
			</a>
		</div>
	</xsl:template>

	<xsl:template match="Shipping">
		<div class="form-group">
			<input type="radio" name="ShippingMethod" onchange="AjaxCheckout.getshippingtotal(this)">
			<xsl:if test="position()=1">
				<xsl:attribute name="checked">
					<xsl:text>checked</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Id"></xsl:value-of>
			</xsl:attribute>
			</input>
			<label>
				<xsl:value-of select="Title"></xsl:value-of>
			</label>
			<xsl:if test="Description!=''">
				<div class="des">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</xsl:if>
		</div>
	</xsl:template>

	<xsl:template match="Payment">
		<div class="method">
			<input type="radio" name="PaymentMethod">
			<xsl:attribute name="id">
				<xsl:value-of select="Id"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="value">
				<xsl:value-of select="Id"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="position()=1">
				<xsl:attribute name="checked">
					<xsl:text>checked</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:value-of select="Id"></xsl:value-of>
				</xsl:attribute>
			</xsl:if>
			</input>
			<label>
				<xsl:attribute name="for">
					<xsl:value-of select="Id"></xsl:value-of>
				</xsl:attribute>
				<!-- <div class="img">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="text">
				</div> -->
				
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text>active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:if test="Description!=''">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</xsl:if>
			</label>
		</div>
	</xsl:template>

</xsl:stylesheet>