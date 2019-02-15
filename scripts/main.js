////// GLOBAL ////////

const moveLanguage = () => {
	return new MappingListener({
		selector: '.language',
		desktopWrapper: '.toolbar',
		desktopMethod: 'appendTo',
		mobileWrapper: '.main-navbar .nav',
		mobileMethod: 'appendTo',
		breakpoint: 992,
	}).watch();
}
const movehotline = () => {
	return new MappingListener({
		selector: '.hot-line',
		desktopWrapper: '.toolbar',
		desktopMethod: 'appendTo',
		mobileWrapper: '.main-navbar .nav',
		mobileMethod: 'prependTo',
		breakpoint: 992,
	}).watch();
}
const moveCart = () => {
	return new MappingListener({
		selector: '.cart',
		desktopWrapper: '.toolbar',
		desktopMethod: 'appendTo',
		mobileWrapper: '.main-navbar',
		mobileMethod: 'insertBefore',
		breakpoint: 992,
	}).watch();
}
const moveUser = () => {
	return new MappingListener({
		selector: '.user',
		desktopWrapper: '.toolbar',
		desktopMethod: 'appendTo',
		mobileWrapper: '.main-navbar .nav',
		mobileMethod: 'prependTo',
		breakpoint: 992,
	}).watch();
}
const moveSearch = () => {
	return new MappingListener({
		selector: '.search',
		desktopWrapper: '.toolbar',
		desktopMethod: 'appendTo',
		mobileWrapper: '.menu-wrap .logo-wrap',
		mobileMethod: 'insertAfter',
		breakpoint: 992,
	}).watch();
}

function turnoffSearch() {
	$('.ttp-header .search-turn-off').on('click', function (e) {
		e.stopPropagation()
		$(this).parent().removeClass('active')
	})
}

function toggleSearch() {
	$('.ttp-header .search-toggle').on('click', function () {
		$('.ttp-header .search-panel').toggleClass('active')
	})
}

function toggleMainNav() {
	$('.ttp-header .menu-toggle').on('click', function () {
		$('.ttp-header .nav').toggleClass('active')
		$('.ttp-header .backdrop').toggleClass('active')
	})
}

function closeMainNav() {
	$('.backdrop').on('click', function () {
		console.log(1);
		$('.nav').removeClass('active')
		$('.backdrop').fadeOut(400)

	})
}

function toggleCart() {
	$('body').on('click', '.cart-toggle', function () {
		$('.ttp-header .cartpanel').toggleClass('open')
	})
}

function closeCart() {
	$('body').on('click', '.btn-closecart .lnr-cross', function () {
		$('.ttp-header .cartpanel').removeClass('open')
	})
}



$(function () {
	$('.backdrop').on('click', function () {
		console.log(1)
		$('.ttp-header .nav').toggleClass('active')
		$('.ttp-header .backdrop').toggleClass('active')

		// $('.backdrop').remove()
	})


})

function toggleLang() {
	$('.ttp-header .language').on('click', function () {
		$(this).find('ul').slideToggle(300)
	})
}

function toggleUser() {
	$('.user').click(function () {
		$(this).find('.user-panel').fadeToggle(500)
	})
}

function slider_banner() {
	if ($('.ttp-slider-2 .list-items').length) {
		$(".ttp-slider-2 .list-items").slick({
			autoplay: false,
			// slickPlay: true,
			// slickPause: true,
			autoplaySpeed: 4000,
			dots: true,
			infinite: true,
			speed: 300,
			arrows: false,
			slidesToShow: 1,
			slidesToScroll: 1,
			// customPaging: function(slider, i) {
			//     var thumb = $(slider.$slides[i]).data('thumb');
			//     return '<a><p> ' + thumb + '</p></a>';
			// },
			responsive: [{
					breakpoint: 480,
					settings: {
						dots: false,
					}
				}
				// You can unslick at a given breakpoint now by adding:
				// settings: "unslick"
				// instead of a settings object
			]
		});
	}

};

function slider_banner_sub() {
	if ($('.ttp-banner-1 .list-items').length) {
		$(".ttp-banner-1 .list-items").slick({
			autoplay: false,
			// slickPlay: true,
			// slickPause: true,
			autoplaySpeed: 4000,
			dots: false,
			infinite: true,
			speed: 300,
			arrows: false,
			slidesToShow: 1,
			slidesToScroll: 1,
		});
	}

};


////// END OF GLOBAL ////////


var slider_footer2 = () => {
	if ($('.ttp-footer-2 .list-items').length) {
		$(".ttp-footer-2 .list-items").slick({
			autoplay: true,
			// slickPlay: true,
			// slickPause: true,
			autoplaySpeed: 4000,
			dots: false,
			infinite: true,
			speed: 300,
			arrows: true,
			slidesToShow: 5,
			slidesToScroll: 1,
			responsive: [{
					breakpoint: 1024,
					settings: {
						slidesToShow: 4,
					}
				},
				{
					breakpoint: 767,
					settings: {
						slidesToShow: 3,
					}
				},
				{
					breakpoint: 480,
					settings: {
						slidesToShow: 2,
					}
				}
				// You can unslick at a given breakpoint now by adding:
				// settings: "unslick"
				// instead of a settings object
			]
		});
	}

};
var slider_footer = () => {
	if ($('.ttp-footer-1 .list-items').length) {
		$(".ttp-footer-1 .list-items").slick({
			autoplay: true,
			// slickPlay: true,
			// slickPause: true,
			autoplaySpeed: 4000,
			dots: false,
			infinite: true,
			speed: 300,
			arrows: true,
			slidesToShow: 5,
			slidesToScroll: 1,
			responsive: [{
					breakpoint: 1024,
					settings: {
						slidesToShow: 4,
					}
				},
				{
					breakpoint: 767,
					settings: {
						slidesToShow: 3,
					}
				},
				{
					breakpoint: 480,
					settings: {
						slidesToShow: 2,
					}
				}
				// You can unslick at a given breakpoint now by adding:
				// settings: "unslick"
				// instead of a settings object
			]
		});
	}

};






// PRODUCT DETAIL ///

function ProductDetailShop1() {
	$('.ttp-product-detail-1 .product-details .slider-for').not('.slick-initialized').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: false,
		infinite: true,
		autoplay: false,
		asNavFor: '.slider-nav'
	});
	$('.ttp-product-detail-1 .product-details .slider-nav').not('.slick-initialized').slick({
		autoplay: false,
		slidesToShow: 4,
		slidesToScroll: 1,
		asNavFor: '.slider-for',
		dots: false,
		arrows: true,
		centerMode: false,
		focusOnSelect: true,
		prevArrow: $('.top-arrow'),
		nextArrow: $('.bottom-arrow'),
		vertical: true,
		variableWidth: false,
		verticalSwiping: false,
		infinite: true,
		responsive: [{
				breakpoint: 992,
				settings: {
					slidesToShow: 6,
					vertical: false,
					verticalSwiping: false,
					variableWidth: false
				}
			},
			{
				breakpoint: 768,
				settings: {
					vertical: false,
					slidesToShow: 4,
					verticalSwiping: false,
					variableWidth: false
				}

			},
			{
				breakpoint: 468,
				settings: {
					vertical: false,
					slidesToShow: 3,
					verticalSwiping: false,
					variableWidth: false
				}

			}
		]
	}).on('init', function (event, slick, direction) {
		if (!$('.ttp-product-detail-1 .product-details .slider-nav .top-arrow').is(':visible')) {
			$('.ttp-product-detail-1 .product-details .slider-control').css({
				'padding-top': '0px'
			})
		}
	}).on('afterChange', function (event, slick, currentSlide, nextSlide) {
		var getcs = slick.$slides.length - 1
		if (currentSlide == 0) {
			$('.ttp-product-detail-1 .product-details .top-arrow').attr('disabled', 'disabled')
		} else {
			$('.ttp-product-detail-1 .product-details .top-arrow').removeAttr('disabled')
		}
		if (getcs == currentSlide) {
			$('.ttp-product-detail-1 .product-details .bottom-arrow').attr('disabled', 'disabled')
		} else {
			$('.ttp-product-detail-1 .product-details .bottom-arrow').removeAttr('disabled')
		}
	});
};



function Gallerydetail() {
	$(".ttp-product-detail-1 .slider-for ").lightGallery({
		thumbnail: true,
		animateThumb: false,
		showThumbByDefault: false,
		selector: 'a'
	});
}


function show_more_product() {
	$('.ttp-product-detail-3  .tab-content .btn-more ').each(function () {
		// $('.ttp-product-detail-3  .wrapper-img figcaption .detail .fullcontent').slideUp()
		var x = $(this).siblings('.detail').height()
		if (x > 500) {
			$(this).siblings('.detail').css('height', x / 4)

		} else {

			$(this).siblings('.detail').toggleClass('active');
			$(this).siblings('.detail.active').css('height', 'auto')

			// $(this).hide()
		}

		$(this).on('click', (function () {

			// $('.ttp-product-detail-3  .wrapper-img figcaption .btn-more ').hide()
			$(this).siblings('.detail').toggleClass('active');
			// $(this).hide()
		}))
	})
}

function quantity_product_detail() {
	$('.ttp-product-detail-1 .quantity input').TouchSpin({
		min: 0,
		max: 100,
		buttondown_class: "btn btn-default",
		buttonup_class: "btn btn-default"
	});
}

function other_product() {
	$('.ttp-product-detail-4 .owl-carousel').owlCarousel({
		loop: true,
		autoplay: false,
		autoplayTimeout: 4000,
		nav: true,
		items: 5,
		margin: 20,
		dots: false,
		navText: ["<span class='lnr lnr-chevron-left'></span>", "<span class='lnr lnr-chevron-right'></span>"],
		responsive: {
			// breakpoint from 0 up
			0: {
				items: 2,
				margin: 10,
			},
			// breakpoint from 480 up
			480: {
				items: 3,
				margin: 10,
			},
			// breakpoint from 768 up
			992: {
				margin: 20,
				items: 4,
			},
			1200: {
				items: 5,
			}
		}

	})
}
// END PRODUCT DETAIL ///

// QA PAGE //
function qa_toggle() {
	$('.ttp-qa-1 .question').each(function () {
		$('.ttp-qa-1 .answer').slideUp()
		$(this).on('click', (function () {
			$(this).toggleClass('active')
			$(this).siblings().next('.answer').slideUp()
			$(this).siblings().removeClass('active')
			$(this).next('.answer').slideToggle()


		}))


	})
}
// END QA PAGE //


// CART Process //
function minusQuantity() {
	$('.minus').each(function () {
		$(this).on('click', function () {
			let quantity = parseInt($(this).siblings('.quantity-number').attr('value'))
			if ($(this).siblings('.quantity-number').val() <= 0) {
				quantity = 0;
			} else {
				quantity = quantity - 1;
			}
			$(this).siblings('.quantity-number').attr('value', quantity)
		})
	})
}

function plusQuantity() {
	$('.plus').each(function () {
		$(this).on('click', function () {
			let quantity = parseInt($(this).siblings('.quantity-number').attr('value'))
			quantity = quantity + 1;
			$(this).siblings('.quantity-number').attr('value', quantity)
		})
	})
}

function viewedProductSlide() {
	let viewedProductSlide = new Swiper('.viewed-product .swiper-container', {
		slidesPerView: 5,
		navigation: {
			nextEl: '.viewed-product .swiper-button-next',
			prevEl: '.viewed-product .swiper-button-prev',
		},
		spaceBetween: 20,
		breakpoints: {
			// when window width is <= 320px
			460: {
				slidesPerView: 1,
			},
			// when window width is <= 640px
			576: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			992: {
				slidesPerView: 3,
			},
			1200: {
				slidesPerView: 4,
			}
		}
	})
}

function toggleOtherAddress() {
	$('#btn-ttmh').click(function () {
		$(this).toggleClass('active')
		$('.checkout-address-edit .address-edit-other').slideToggle();
	})
}

function sameInfo() {
	$('#btn-cntt').click(function () {
		$(this).toggleClass('active')
	})
}

function toggleExportBill() {
	$('.checkout-address-edit .cart-bill-export #btn-xuathd').click(function () {
		$(this).toggleClass('active')
		$('.checkout-address-edit .cart-bill-info').slideToggle();
	})
}

function choosePaymentMethod() {
	$('.cart-payment-method .method label').click(function () {
		$(this).addClass('active')
		$(this).parent().siblings('.method').find('label').removeClass('active')
	})
}

function refreshCart() {
	$('.quantity.input-number .minus, .quantity.input-number .plus').click(function () {
		setTimeout(() => {

			$(this).siblings('input').trigger('change')
		}, 200);
	})
}

function viewedProductAddCart() {
	$('.Module-267 .product .btn-put').click(function () {
		setTimeout(function () {
			location.reload();
		}, 600)
	})
}



// END CART Process //

function addClassByLocation() {
	let i = window.location.pathname
	if (i.search('san-pham') > 0) {
		$('.Module.Module-207 .nav-list .nav-item:nth-child(2) ').addClass('active')
	} else if (i.search('khuyen-mai') > 0) {
		$('.Module.Module-207 .nav-list .nav-item:nth-child(3) ').addClass('active')

	} else if (i.search('truyen-thong') > 0) {
		$('.Module.Module-207 .nav-list .nav-item:nth-child(4) ').addClass('active')
	} else if (i.search('ho-tro-khach-hang') > 0) {
		$('.Module.Module-207 .nav-list .nav-item:nth-child(5) ').addClass('active')
	}
}

function news_photo() {

	$(".ttp-media-photo-1 .wrapper-gallery .box-zoom").lightGallery({
		thumbnail: true,
		selector: 'a'
	});

	$(".ttp-media-photo-2 .wrapper-gallery .box-zoom").lightGallery({
		thumbnail: true,
		selector: 'a'
	});

	// $('.canhcam-news-photo-1 .wrapper-gallery').each(function() {
	// 	$(this).click(function() {
	// 		$(this).find('.hidden a:first-child').trigger('click')
	// 	})
	// });
}


var showmore_product = () => {
	$('body').on('click', '.btn-show-more', function (e) {
		e.preventDefault()
		let pageurl = $('.btn-show-more').attr('href');
		$.ajax({
			url: pageurl,
			data: {
				isajax: true
			},
			type: 'post',
			success: function (data) {
				$('.ajaxwrapper').append($(data).find('.ajaxwrapper').html());
				$('.ajaxPagerLinkWrapper').html($(data).find('.ajaxPagerLinkWrapper').html());
			},
		})
	})

}





$('.btn-buy').on('click', function (e) {
	e.preventDefault();
	$(document).ajaxComplete(function () {
		$('.cartpanel').addClass('open')
	})

})

$('#PaymentAgree').change('input', function () {
	if ($('#PaymentAgree').is(':checked')) {
		// console.log(1)
		$('.cart-button-checkout .btn-next ').show()
	} else {
		$('.cart-button-checkout .btn-next ').hide()
		// console.log(0)
	}
})

let nav = {

	mainNav: () => {
		let nav_toggle = $('.ttp-product-1 .nav-toggle ')
		let nav = $('.ttp-product-1 nav ')
		let li = $('.ttp-product-1 nav li')
		nav_toggle.on('click', function () {
			nav_toggle.toggleClass('active')
			nav.toggleClass('active');
		})
		// li.on('click', function () {
		// 	nav.removeClass('active');
		// })
	},

	navInit: () => {
		nav.mainNav();
	}
}



///////// MAIN Control /////
$(document).ready(function () {
	if ( $('header .logined li').length == 0 ){
		$('header .logined').addClass('deactive')
		$('header .logined').removeClass('active')
		
	} else {
		$('header .logined').addClass('active')
		$('header .logined').removeClass('deactive')

	}
	moveSearch();
	movehotline();
	moveCart();
	moveUser();
	moveLanguage();
	turnoffSearch();
	toggleMainNav();
	toggleSearch();
	toggleLang();
	toggleCart()
	closeCart()
	slider_banner_sub()
	slider_banner()
	slider_footer()
	slider_footer2()
		
	Gallerydetail()
	$('.product-detail-page .commentpanel').insertAfter('.ttp-product-detail-3 #tab-2 .review h3')
	$('.ttp-product-detail-3  .journalTools').slideUp()
	$('.ttp-product-detail-3 .review  .btn-review ').on('click', function () {
		$('.ttp-product-detail-3  .journalTools').slideToggle()
	})
	ProductDetailShop1();
	show_more_product();
	quantity_product_detail();
	other_product();
	qa_toggle();
	viewedProductSlide();
	toggleOtherAddress();
	sameInfo();
	toggleExportBill();
	choosePaymentMethod();
	refreshCart();
	viewedProductAddCart();
	minusQuantity();
	plusQuantity();
	addClassByLocation();
	news_photo();
	$('.banner-remove').parents('.owl-item').hide()

	showmore_product();
	nav.navInit();
	if ($(window).width() < 992 ){
		AOS.init({
			disable: true
		})
		
	} else {
		AOS.init({
			duration: 1500,
	
			disable: false
		})
		
	}

	// showmore_promotion();

});