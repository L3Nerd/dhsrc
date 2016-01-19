class Venue < ActiveRecord::Base
  has_many :game_events
end
