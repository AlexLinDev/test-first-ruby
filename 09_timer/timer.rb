class Timer
	def initialize
	@seconds = 0
	@minutes = 0
	@hours = 0
	end

	def seconds=(int)
		@seconds = int
	end

	def seconds
		@seconds
	end

	def lead_zero(i)
		if i < 10
			"0" + i.to_s
		else
			i.to_s
		end
	end

	def time_string
		if @seconds / 3600 > 0
			@hours = @seconds / 3600
			@minutes = (@seconds % 3600) / 60
			@seconds = (@seconds % 3600) % 60
			lead_zero(@hours) + ":" + lead_zero(@minutes) + ":" + lead_zero(@seconds)
		elsif @seconds / 60 > 0
			@minutes = @seconds / 60
			@seconds = @seconds % 60
			"00:" + lead_zero(@minutes) + ":" + lead_zero(@seconds)
		else
			"00:00:" + lead_zero(@seconds)
	end


			
	end
end