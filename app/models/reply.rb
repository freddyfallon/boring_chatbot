class Reply < ApplicationRecord
  validates :text, length: { minimum: 2 }
end
