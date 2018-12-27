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


var setHeightH3 = () => {
	var maxHeight = 0;

	$('.ttp-intro-about-us-3 .block-wrapper .info-wrapper').each(function () {
		var thisH = $(this).height();
		if (thisH > maxHeight) {
			maxHeight = thisH;
		}
	});
	$('.ttp-intro-about-us-3 .block-wrapper .banner-info-wrapper').height(maxHeight)
	$('.ttp-intro-about-us-3 .block-wrapper .info-wrapper').height(maxHeight)
}


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
	
	
	slider_banner()
	slider_footer()

});