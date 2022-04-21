module ApplicationHelper

	def flash_message (alert)
		case alert
			when :notice then "alert alert-info"
			when :success then "alert alert-sucess"
			when :error then "alert alert-danger"
			when :alert then "alert alert-primary"
		end
	end
end
