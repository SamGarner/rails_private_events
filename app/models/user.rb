class User < ApplicationRecord
  validates :username, :name, presence: true

  has_many :hosted_events, foreign_key: 'creator_id', class_name: 'Event'
  has_many :invitations, foreign_key: 'guest_id'
  has_many :attended_events, through: :invitations, source: :event # class_name: 'Event'
end


#  source: :event,