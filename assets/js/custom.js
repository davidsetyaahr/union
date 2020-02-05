const mainNav = document.querySelector(".main-nav");
const nav = () => {
	let body = window.scrollY;
	let img1 = document.getElementById("logo1");
	let img2 = document.getElementById("logo2");
	if (body > 0) {
		img1.classList.add("hidden");
		img2.classList.remove("hidden");
		mainNav.classList.add("nav-white");
	} else {
		img1.classList.remove("hidden");
		img2.classList.add("hidden");
		mainNav.classList.remove("nav-white");
	}
};
const navbarToggler = document.querySelector(".navbar-toggler");
navbarToggler.addEventListener("click", function() {
	mainNav.classList.toggle("phone-version");
});
nav();
window.addEventListener("scroll", function() {
	nav();
});
$(".scrollDown").click(function(e) {
	e.preventDefault();
	const target = $(this).data("target");
	const off = $(target).offset();
	$("body,html").animate({ scrollTop: off.top - 81 }, 2000);
});
$(".img-destination").owlCarousel({
	autoplay: true,
	animateOut: "fadeOut",
	loop: true,
	items: 1,
	margin: 0,
	stagePadding: 0,
	nav: true,
	navText: [
		'<span class="ion-ios-arrow-back">',
		'<span class="ion-ios-arrow-forward">'
	],
	responsive: {
		0: {
			items: 1
		},
		600: {
			items: 2
		},
		1000: {
			items: 4
		}
	}
});
