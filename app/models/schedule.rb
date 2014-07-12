class Schedule < ActiveRecord::Base
	has_many :group_schedules

	def self.create_package(params)
		@package = Package.new(teacher_id: params[:package][:teacher], room_id: 3, number_of_sessions: 15)
		nschedules = params[:number]
		if @package.save
			schedule = Schedule.new(day: params[:schedule][:day], start_time: params[:schedule][:start_time], end_time: params[:schedule][:end_time], state: true, language_id: Teacher.find(params[:package][:teacher]).language.id)
			if schedule.save
				group_schedule = GroupSchedule.new(schedule_id: schedule.id, package_id: @package.id)				
				if group_schedule.save					
					if nschedules == "1"
						return true
					end
				else
					return false
				end
			else

			end			
			if nschedules == "2" or nschedules == "3"
				schedule1 = Schedule.new(day: params[:schedule1][:day], start_time: params[:schedule1][:start_time], end_time: params[:schedule1][:end_time], state: true, language_id: Teacher.find(params[:package][:teacher]).language.id)
				if schedule1.save
					group_schedule1 = GroupSchedule.new(schedule_id: schedule1.id, package_id: @package.id)
					if group_schedule1.save
						if nschedules == "2"
							return true
						end
					else
						return false
					end
				else
					return false
				end				
			end
			if nschedules == "3" 
				schedule2 = Schedule.new(day: params[:schedule2][:day], start_time: params[:schedule2][:start_time], end_time: params[:schedule2][:end_time], state: true, language_id: Teacher.find(params[:package][:teacher]).language.id)
				if schedule2.save
					group_schedule2 = GroupSchedule.new(schedule_id: schedule2.id, package_id: @package.id)
					if group_schedule2.save
						return true
					else
						return false
					end
				else
					return false
				end				
			end
		else
			return false
		end		
	end
end
