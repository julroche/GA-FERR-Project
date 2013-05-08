class Activity < ActiveRecord::Base
  attr_accessible :activity_name, :user_id

  belongs_to :user
  has_many :events

  validates_presence_of :activity_name
  validates_presence_of :user_id
  validates_uniqueness_of :activity_name
end
