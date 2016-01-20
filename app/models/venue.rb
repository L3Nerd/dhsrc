class Venue < ActiveRecord::Base
  has_many :game_events

  validates :name, :street, :plz, :city, presence: true

end
