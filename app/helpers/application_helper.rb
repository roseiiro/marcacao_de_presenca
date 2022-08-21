module ApplicationHelper

	# include frontend pagination
	include Pagy::Frontend

	def flash_message (alert)
		case alert
			when :notice then "alert alert-info"
			when :success then "alert alert-sucess"
			when :error then "alert alert-danger"
			when :alert then "alert alert-primary"
		end
	end

	def view(chave, valor, classes = "col col-md-4")
		html =  "<div class='#{classes}'>"
		html += "<strong class='small'>#{chave}: &nbsp;</strong>"
		html += "<span class='small'>#{valor}</span>"
		html += "</div>"
		html.html_safe
	end
end
