module ApplicationHelper
	def big_date(time)
		return if time.nil?
		time.strftime("%B %#d, %Y - %A, %I:%M %p")
	end
end
