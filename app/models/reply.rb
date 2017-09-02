class Reply < ApplicationRecord
  validates :text, length: { minimum: 2 }, presence: true
  belongs_to :user
end
