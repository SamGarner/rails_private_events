class User < ApplicationRecord

  validates :username, :name, presence: true
end
