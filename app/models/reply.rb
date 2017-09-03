class Reply < ApplicationRecord
  validates :text, length: { minimum: 2 }, presence: true
  validates :tolerance_level, numericality: { greater_than: 0, less_than_or_equal_to: 3 }, presence: true
end
