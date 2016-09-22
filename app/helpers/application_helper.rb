module ApplicationHelper
	def glyph(icon_name_postfix, hash={})
    content_tag :span, nil, hash.merge(class: "glyphicon glyphicon-#{icon_name_postfix.to_s.gsub('_','-')}")
  end

  def active_class(link_path)
	  current_page?(link_path) ? 'active' : ''
	end

	def form_group condition
		condition ? 'form-group has-warning' : 'form-group'
	end

	def form_control condition
		condition ? 'form-control form-control-warning' : 'form-control'
	end

	def show_error_text condition, text
		content_tag :small, text, class: 'form-text text-muted'
	end

end
