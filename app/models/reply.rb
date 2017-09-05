class Reply < ApplicationRecord
  validates :text, length: { minimum: 2 }, presence: true
  validates :tolerance_level, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 3 }, presence: true
  validates :stage, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 3 }, presence: true
end
