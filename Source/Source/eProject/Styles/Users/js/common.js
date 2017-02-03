var Empyre = Empyre || {};

Empyre.Theme = {
	name: "Providence",
	version: "4.5.10",
	config: {
		ajaxCartEnabled: true,
		debugMode: false,
		indexProductsLimit: 4,
		multicurrencyEnabled: true,
		productQtySelectMax: 10,
		productFIZoomEnabled: true,
		productSetVariantFromSecondary: false,
		productUnavailablePriceStyle: "integer"
	},
	current: {
	},
	shop: {
		currency: "VND",
		defaultCurrency: "" || "VND",
		domain: "milk-store.myharavan.com",
		moneyFormat: "{{amount}}?",
		moneyWithCurrencyFormat: "{{amount}} VND",
		name: "milk store",
		url: "http://milk-store.myharavan.com"
	},
	locale: {
		cart: {
			ajax: {
				addError: "cart.ajax.add_error",
				addSuccess: "Th&#234;m v�o gi? h�ng th�nh c&#244;ng",
				addWithVariants: "cart.ajax.add_with_variants",
				viewCartLink: "cart.ajax.view_cart_link",
				viewProductLink: "cart.ajax.view_product_link"
			},
			item_count: {
				zero: "cart.item_count.zero",
				one: "cart.item_count.one",
				other: "cart.item_count.other"
			},
			removeItemPrompt: "X�a kh?i g? h�ng?"
		},
		orderNotes: {
			add: "Luu ghi ch�",
			edit: "Luu ghi ch�",
			save: "S?a ghi ch�"
		},
		products: {
			addToCart: "products.add_to_cart",
			addToCartAdding: "�� th&#234;m",
			soldOut: "products.sold_out",
			unavailable: "products.unavailable"
		},
		shippingCalculator: {
			findRates: "shipping_calculator.find_rates",
			searching: "shipping_calculator.searching",
			rates: {
				zero: "shipping_calculator.rates.zero",
				one: "shipping_calculator.rates.one",
				other: "shipping_calculator.rates.other"
			}
		}
	}
};
$(document).ready(function() {
	$('#add-to-cart1').click(function() {
		var quantity = $('#quantity').val();
		var variant_id = $('#product-select').val();
		var params = {
			type: 'POST',
			url: '/cart/add.js',
			data: 'quantity=' + quantity + '&id=' + variant_id,
			dataType: 'json',
			success: function(line_item) {
				window.location = '/cart';
			},
			error: function(XMLHttpRequest, textStatus) {
				Haravan.onError(XMLHttpRequest, textStatus);
			}
		};
		jQuery.ajax(params);
	});

	$('#buy-now1').click(function(e) {
		var quantity = $('#quantity').val();
		var variant_id = $('#product-select').val();
		var params = {
			type: 'POST',
			url: '/cart/add.js',
			data: 'quantity=' + quantity + '&id=' + variant_id,
			dataType: 'json',
			success: function(line_item) {
				window.location = '/checkout';
			},
			error: function(XMLHttpRequest, textStatus) {
				Haravan.onError(XMLHttpRequest, textStatus);
			}
		};
		jQuery.ajax(params);
	});
});


$(document).ready(function() {
	var owl = $("#owl-demo");
	$("#owl-demo").owlCarousel({
		itemsCustom: [
			[0, 4],
			[450, 4],
			[600, 5],
			[700, 5],
			[1000, 5],
			[1200, 5],
			[1400, 5],
			[1600, 5]
		],
		navigation: false

	});

	$(".next").click(function() {
		owl.trigger('owl.next');
	})
	$(".prev").click(function() {
		owl.trigger('owl.prev');
	})
});

$(document).ready(function() {
	$("#recover-passwordjj").click(function() {
		$("#recover-password1jjj").slideToggle();
		$("#customer_loginjjj").hide();

	})

	$(".phucfhoi").click(function() {
		$("#customerf_login").css("display", "none");
		$("#recfover-password1").css("display", "block");
		$("formf[action='/account/recover']").submit();
	})
});

//<![CDATA[
	if ((typeof Haravan) === 'undefined') {
		Haravan = {};
	}
	Haravan.culture = 'vi-VN';
	Haravan.shop = 'localhost';
	Haravan.theme = {"name": "Milk_Store_v1.0", "id": 1000061540, "role": "main"};
	Haravan.domain = 'localhost';
//]]>