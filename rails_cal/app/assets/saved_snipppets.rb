
saved_snipppets.rb

Cal wiz 1 - activities controller

def create
    @activity = Activity.new(params[:activity])

    respond_to do |format|
      if @activity.save
        format.html { redirect_to many_new_path({:activity_id => @activity.id}), notice: 'Activity was successfully created. Now enter your events.' }
        format.json { render json: many_new_path, status: :created, location: @activity }
      else
        format.html { render action: "new" }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  Cal wiz 2 - Events controller 

  def many_new
    @event = Event.new(params[:event])

    begin
      @current_activity = Activity.find(params[:activity_id]).activity_name
    rescue
      @current_activity = "Activity was not saved."
    end


    # @activity = 100
    # e_to_be_deleted = Events.find_all_by_activity_id(@activity.id)
    # e_to_be_deleted.destroy_all!
  
  end

    def create
    # @current_activity = Activity.find(params[:activity_id]).activity_name

    # @events = params[:all_event_hashes]
    # @events.each do |event_hash|
    #   Event.create(event_hash)
    # end

    # redirect_to lala_path, :notice => "Created #{@events.count} new events."

    # @event = Event.new(params[:event])

    # respond_to do |format|
    #   if @event.save
    #     # format.html { redirect_to @event, notice: 'Event was successfully created.' }
    #     format.html { redirect_to @event, notice: 'Event was successfully created.' }
    #     format.json { render json: @event, status: :created, location: @event }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @event.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  