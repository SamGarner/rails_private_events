class Invitation < ApplicationRecord
  belongs_to :event
  belongs_to :guest, foreign_key: :guest_id, class_name: 'User'

  has_one :creator, through: :events, class_name: 'User'
end
