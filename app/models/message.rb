class Message < ApplicationRecord
  validates :text, length: { minimum: 2 }
end
