class Message < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  validates_length_of :content, minimum: 5
end
