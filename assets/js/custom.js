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
$(document).ready(function() {
	$(".loading").addClass("hide");
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
		margin: 10,
		stagePadding: 0,
		navText: [
			"<i class='fa fa-chevron-circle-left'></i>",
			"<i class='fa fa-chevron-circle-right'></i>"
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
	$(".img-region").owlCarousel({
		autoplay: true,
		animateOut: "fadeOut",
		loop: true,
		items: 1,
		margin: 10,
		stagePadding: 0,
		navText: [
			"<i class='fa fa-chevron-circle-left'></i>",
			"<i class='fa fa-chevron-circle-right'></i>"
		],
		responsive: {
			0: {
				items: 2
			},
			600: {
				items: 2
			},
			1000: {
				items: 4
			}
		}
	});

	$(".choose-style").click(function(e) {
		e.preventDefault();
		$(".loading").removeClass("hide");
		var id = $(this).attr("id");
		var url = $(".filter-style").data("url");

		$.ajax({
			type: "post",
			data: { id_style: id },
			url: url,
			success: function(data) {
				$(".packages .package").remove();
				$(".packages").html(data);
			},
			complete: function() {
				$(".loading").addClass("hide");
			}
		});
	});
	function iformat(icon) {
		var originalOption = icon.element;
		return $(
			'<span><i class="' +
				$(originalOption).data("icon") +
				'"></i> ' +
				icon.text +
				"</span>"
		);
	}
	$(".custom-select").select2({
		width: "100%",
		templateSelection: iformat,
		templateResult: iformat,
		allowHtml: true
	});
});
