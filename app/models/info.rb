class Info < ApplicationRecord
  validates_presence_of :title, :content
end

