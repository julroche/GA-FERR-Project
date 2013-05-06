class Activity < ActiveRecord::Base
  attr_accessible :activity_name, :user_id

  belongs_to :user
end
