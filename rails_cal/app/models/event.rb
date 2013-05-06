class Event < ActiveRecord::Base
  attr_accessible :end_at, :name, :start_at, :activity_id
  has_event_calendar
  belongs_to :activity
end
