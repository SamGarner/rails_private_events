class Event < ApplicationRecord
  default_scope { order(date: :desc) }

  validates :date, :location, presence: true

  belongs_to :creator, class_name: 'User'
  has_many :invitations
  has_many :guests, through: :invitations

  def self.past
    select { |event| event.date < DateTime.now }
  end

  def self.upcoming
    select { |event| event.date >= DateTime.now }
  end
end
