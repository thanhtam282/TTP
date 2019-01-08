// export class Checkout {
// 	minusQuantity() {
// 		$('.minus').each(function () {
// 			$(this).on('click', function () {
// 				let quantity: number = parseInt($(this).siblings('.quantity-number').attr('value'))
// 				if ($(this).siblings('.quantity-number').val() <= 0) {
// 					quantity = 0;
// 				} else {
// 					quantity = quantity - 1;
// 				}
// 				$(this).siblings('.quantity-number').attr('value', quantity)
// 			})
// 		})
// 	}
// 	plusQuantity() {
// 		$('.plus').each(function () {
// 			$(this).on('click', function () {
// 				let quantity: number = parseInt($(this).siblings('.quantity-number').attr('value'))
// 				quantity = quantity + 1;
// 				$(this).siblings('.quantity-number').attr('value', quantity)
// 			})
// 		})
// 	}
// 	viewedProductSlide() {
// 		let viewedProductSlide = new Swiper('.viewed-product .swiper-container', {
// 			slidesPerView: 5,
// 			navigation: {
// 				nextEl: '.viewed-product .swiper-button-next',
// 				prevEl: '.viewed-product .swiper-button-prev',
// 			},
// 			spaceBetween: 20,
// 			breakpoints: {
// 				// when window width is <= 320px
// 				460: {
// 					slidesPerView: 1,
// 				},
// 				// when window width is <= 640px
// 				576: {
// 					slidesPerView: 2,
// 				},
// 				768: {
// 					slidesPerView: 3,
// 				},
// 				992: {
// 					slidesPerView: 3,
// 				},
// 				1200: {
// 					slidesPerView: 4,
// 				}
// 			}
// 		})
// 	}
// 	toggleOtherAddress() {
// 		$('#btn-ttmh').click(function () {
// 			$(this).toggleClass('active')
// 			$('.checkout-address-edit .address-edit-other').slideToggle();
// 		})
// 	}
// 	sameInfo() {
// 		$('#btn-cntt').click(function () {
// 			$(this).toggleClass('active')
// 		})
// 	}
// 	toggleExportBill() {
// 		$('.checkout-address-edit .cart-bill-export #btn-xuathd').click(function () {
// 			$(this).toggleClass('active')
// 			$('.checkout-address-edit .cart-bill-info').slideToggle();
// 		})
// 	}
// 	choosePaymentMethod() {
// 		$('.cart-payment-method .method label').click(function () {
// 			$(this).addClass('active')
// 			$(this).parent().siblings('.method').find('label').removeClass('active')
// 		})
// 	}

// 	refreshCart() {
// 		$('.quantity.input-number .minus, .quantity.input-number .plus').click(function () {
// 			$(this).siblings('input').trigger('change')
// 		})
// 	}

// 	viewedProductAddCart() {
// 		$('.Module-187 .tna-product-item .addcart').click(function () {
// 			setTimeout(function () {
// 				location.reload();
// 			}, 600)
// 		})
// 	}
// }