class Event < ApplicationRecord
    has_many :attendances, foreign_key: :attended_event_id
    has_many :attendees, through: :attendances, source: :user

    scope :past, -> { where("date < ?", Time.now) }
    # Ex:- scope :active, -> {where(:active => true)}
    scope :upcoming, -> { where("date > ?", Time.now) }
end
