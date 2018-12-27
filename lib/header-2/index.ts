// export class Header {
// 	moveLanguage() {
// 		let moveLanguage = new MappingListener({
// 			selector: '.language',
// 			desktopWrapper: '.toolbar',
// 			desktopMethod: 'appendTo',
// 			mobileWrapper: '.main-navbar .nav',
// 			mobileMethod: 'appendTo',
// 			breakpoint: 992,
// 		}).watch()
// 	};
// 	moveCart() {
// 		let moveCart = new MappingListener({
// 			selector: '.cart',
// 			desktopWrapper: '.toolbar',
// 			desktopMethod: 'appendTo',
// 			mobileWrapper: '.main-navbar',
// 			mobileMethod: 'insertBefore',
// 			breakpoint: 992,
// 		}).watch()
// 	}
// 	moveUser() {
// 		let moveUser = new MappingListener({
// 			selector: '.user',
// 			desktopWrapper: '.toolbar',
// 			desktopMethod: 'appendTo',
// 			mobileWrapper: '.main-navbar .nav',
// 			mobileMethod: 'prependTo',
// 			breakpoint: 992,
// 		}).watch()
// 	};
// 	moveSearch() {
// 		let moveUser = new MappingListener({
// 			selector: '.search',
// 			desktopWrapper: '.toolbar',
// 			desktopMethod: 'appendTo',
// 			mobileWrapper: '.menu-wrap .logo-wrap',
// 			mobileMethod: 'insertAfter',
// 			breakpoint: 992,
// 		}).watch()
// 	}

// 	toggleSearch() {
// 		$('.cc-header .search-toggle').on('click', function () {
// 			$('.cc-header .search-panel').toggleClass('active')
// 		})
// 	}
// 	turnoffSearch() {
// 		$('.cc-header .search-turn-off').on('click', function (e) {
// 			e.stopPropagation()
// 			$(this).parent().removeClass('active')
// 		})
// 	}
// 	toggleMainNav() {
// 		$('.cc-header .menu-toggle').on('click', function () {
// 			$('.cc-header .nav').toggleClass('active')
// 			$('.cc-header .backdrop').fadeToggle(400)
// 		})
// 	}
// 	closeMainNav() {
// 		$('.backdrop').on('click', function () {
// 			console.log(1);
// 			$('.nav').removeClass('active')
// 			$('.backdrop').fadeOut(400)

// 		})
// 	}

// 	toggleCart() {
// 		$('body').on('click', '.cart-toggle', function () {
// 			$('.cc-header .cartpanel').toggleClass('open')
// 		})
// 	}

// 	closeCart() {
// 		$('body').on('click', '.btn-closecart .lnr-cross', function () {
// 			$('.cc-header .cartpanel').removeClass('open')
// 		})
// 	}

// 	addBackdrop(x: any) {
// 		if (x.matches) { // If media query matches
// 			$('header').append('<div class="backdrop"></div>')
// 		} else {
// 			$('.backdrop').remove()
// 		}
// 	}
// 	toggleLang() {
// 		$('.cc-header .language').on('click', function () {
// 			$(this).find('ul').slideToggle(400)
// 		})
// 	}
// 	toggleUser() {
// 		$('.user').click(function () {
// 			$(this).find('.user-panel').fadeToggle(500)
// 		})
// 	}
// }
