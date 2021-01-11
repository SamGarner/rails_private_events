class Event < ApplicationRecord
  default_scope { order(date: :desc) }

  validates :date, :location, presence: true

  belongs_to :creator, class_name: 'User'
end

