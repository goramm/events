module EventsHelper
	def format_price(event)
		if event.free?
			content_tag(:strong, 'Free')
		else
			number_to_currency(event.price)
		end
	end

	def image_for(event)
		if event.image_file_name.blank?
			image_tag('placeholder.png', width: '100%')
		else
			image_tag(event.image_file_name, width: '100%')
		end
	end

	def nav_link_to(icon, text, path)
		link_to glyph(icon) + text, path, class: "nav-link #{active_class(path)}"
	end
end
