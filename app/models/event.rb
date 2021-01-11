class Event < ApplicationRecord
  validates :date, :location, presence: true

  belongs_to :creator, class_name: "User"
end
