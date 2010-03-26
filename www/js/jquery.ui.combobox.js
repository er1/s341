	(function($) {
		$.widget("ui.combobox", {
		   // default options
		   options: {
		     onSelect: function() {},
		   },
			_create: function() {
				var self = this;
				var options = this.options;
				var select = this.element.hide();
				var input = $("<input>")
					.insertAfter(select)
					.autocomplete({
						source: function(request, response) {
							var matcher = new RegExp(request.term, "i");
							response(select.children("option").map(function() {
								var text = $(this).text();
								if (!request.term || matcher.test(text))
									return {
										id: $(this).val(),
										label: text.replace(new RegExp("(?![^&;]+;)(?!<[^<>]*)(" + request.term.replace(/([\^\$\(\)\[\]\{\}\*\.\+\?\|\\])/gi, "\\$1") + ")(?![^<>]*>)(?![^&;]+;)", "gi"), "<strong>$1</strong>"),
										value: text
									};
							}));
						},
						delay: 0,
						select: function(e, ui) {
							if (!ui.item) {
								// remove invalid value, as it didn't match anything
								$(this).val("");
								return false;
							}
							$(this).focus();
							select.val(ui.item.id);
							self._trigger("selected", null, {
								item: select.find("[value='" + ui.item.id + "']")
							});
							options.onSelect(e, ui);
						},
						minLength: 0
					})
					.addClass("ui-widget ui-widget-content ui-corner-left");
				$("<button>&nbsp;</button>")
				.insertAfter(input)
				.button({
					icons: {
						primary: "ui-icon-triangle-1-s"
					},
					text: false
				}).removeClass("ui-corner-all")
				.addClass("ui-corner-right ui-button-icon")
				.position({
					my: "left center",
					at: "right center",
					of: input,
					offset: "-1 0"
				}).css("top", "")
				.click(function() {
					// close if already visible
					if (input.autocomplete("widget").is(":visible")) {
						input.autocomplete("close");
						return;
					}
					// pass empty string as value to search for, displaying all results
					input.autocomplete("search", "");
					input.focus();
				});
			}
			, value: function() {
				alert('Yeah');
			}
		});

	})(jQuery);
