class Message < ApplicationRecord
  validates :text, length: { minimum: 2 }, presence: true
  validates :boring_level, numericality: { greater_than: 0, less_than_or_equal_to: 3 }, presence: true
  belongs_to :user
end
