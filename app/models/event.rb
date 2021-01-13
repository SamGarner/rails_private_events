class Event < ApplicationRecord
  default_scope { order(date: :desc) }
  scope :upcoming, ->(now) { where('date >= ?', now).order(date: :asc) }
  scope :past, ->(now) { where('date < ?', now) }

  validates :date, :location, presence: true

  belongs_to :creator, class_name: 'User'
  has_many :invitations
  has_many :guests, through: :invitations
end
