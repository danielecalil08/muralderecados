class Message < ApplicationRecord
  validates_presence_of :author, :content
end
