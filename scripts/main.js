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
		$(this).on('click', (function () {

			// $('.ttp-product-detail-3  .wrapper-img figcaption .btn-more ').hide()
			$(this).siblings('.detail').toggleClass('active');
			$(this).hide()
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
	navText: ["<span class='lnr lnr-chevron-left'></span>","<span class='lnr lnr-chevron-right'></span>"],
	responsive : {
		// breakpoint from 0 up
		0 : {
			items: 2,
			margin: 10,
		},
		// breakpoint from 480 up
		480 : {
			items: 3,
			margin: 10,
		},
		// breakpoint from 768 up
		992 : {
			margin: 20,
			items: 4,
		},
		1200 : {
			items: 5,
		}
	}

})
}
// END PRODUCT DETAIL ///

$('.ttp-qa-1 .question').each(function () {
	$('.ttp-qa-1 .answer').slideUp()
	$(this).on('click', (function() {
		$(this).toggleClass('active')
		$(this).siblings().next('.answer').slideUp()
		$(this).siblings().removeClass('active')
		$(this).next('.answer').slideToggle()


	}))


})


// QA PAGE //

// END QA PAGE //


///////// MAIN Control /////
$(document).ready(function () {
	moveSearch();
	movehotline();
	moveCart();
	moveLanguage();
	turnoffSearch();
	toggleMainNav();
	toggleSearch();
	toggleLang();

	slider_banner_sub()
	slider_banner()
	slider_footer()

	Gallerydetail()
	ProductDetailShop1();
	show_more_product();
	quantity_product_detail();
	other_product();
	// $("input[name='demo1']").TouchSpin({
	// 	min: 0,
	// 	max: 100,
	// 	// step: 0.1,
	// 	// decimals: 2,
	// 	// boostat: 5,
	// 	maxboostedstep: 10,
	// 	buttondown_class: "btn btn-default",
	// 	buttonup_class: "btn btn-default"
	// 	// postfix: '%'
	// });

});