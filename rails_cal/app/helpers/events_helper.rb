module EventsHelper

# Build event for each of "many_dates"
# Need to create array of events to ultimately use create method to get into activerecord)


# Each event is a hash requiring :name:, :start_at:, :end_at:, :activity_id:


# Start by building arrays of :start_at and :end_at, for each event,
# 	def make_start_at (dates_array, start_hour, start_min)
		
# 		dates_array.each do |index|
# 			start_at = 

# 		end
	  
# 	end

# # Then combine :start_at and :end_at to make hash for each event.  Keep the event hashes in an array. 
# 	def create_partial_event_hash
# 		# 
# 	end   
      
# # Do block create method to add :name and :activity_id to each event hash and create activerecord

#   def create_events
#  		User.create([partial_event_hashes]) do |u|

#   		u.name = name
#   		u.activity_id = activity_id
# 		end
# 	end

end
