class Event < ApplicationRecord
  default_scope -> { order(start: :asc) }

  validates_presence_of :title, :start, :end
  validate :end_is_after_start

  def end_is_after_start
    return if self.end.blank? || self.start.blank?
    if self.end < self.start
      errors.add(:end, "cannot be before the start date") 
    end 
  end
end
