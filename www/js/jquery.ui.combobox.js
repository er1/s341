	(function($) {
		$.widget("ui.combobox", {
		   // default options
		   options: {
				onSelect: function() {},
				defaultText: ""
		   },
			_create: function() {
				var self = this;
				var options = this.options;
				options.defaultText = this.element.find("[selected]").text() || options.defaultText;
				var select = this.element.hide();
				var input = $("<input>")
					.attr("id",this.element.attr("id") + "Combo")
					.val(options.defaultText)
					.click(function() { if ($(this).val() == options.defaultText) $(this).val(""); } )
					.insertAfter(select)
					.autocomplete({
						source: function(request, response) {
							getData({"action":"searchForCourse","s":request.term}, function(found)
							{
								var ans = [];
								$.each(found, function(index, record)
								{
									ans.push({
												id: record.Symbol
												,label: record.Symbol + " - " + record.Name
												,value: record.Symbol
											});
									
								})
								response(ans);
							});
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
