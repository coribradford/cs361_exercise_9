class Employee

	def prepare_bicycle(bike)
		if bike.respond_to?(:prepare)
			bike.prepare
		else
			puts 'Uhh, boss, I dunno how to do that.'
		end
	end
end

class BmxBike

	def prepare
		self.clean
	end

	def clean
		puts 'Cleaning...'
	end

end

class RoadBike

	def prepare
		self.lubricate_gears
	end

	def lubricate_gears
		puts 'Lubricating gears...'
	end

end

class MountainBike

	def prepare
		self.adjust_suspension
	end

	def adjust_suspension
		puts 'Adjusting suspension...'
	end

end

class Tricycle

	def prepare
		self.adjust_seat
	end

	def adjust_seat
		puts 'Adjusting seat...'
	end

end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
	employee.prepare_bicycle(bike)
end