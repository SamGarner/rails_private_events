class User < ApplicationRecord
  validates :username, :name, presence: true

  has_many :events, foreign_key: 'creator_id', class_name: 'Event'
end
