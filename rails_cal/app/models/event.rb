class Event < ActiveRecord::Base
  attr_accessible :end_at, :name, :start_at, :activity_id
  has_event_calendar
  belongs_to :activity

  validates_presence_of :name
  validates_presence_of :start_at
  validates_presence_of :activity_id
end
