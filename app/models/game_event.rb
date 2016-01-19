class GameEvent < ActiveRecord::Base
  belongs_to :team
  belongs_to :venue
  has_many :players, through: :player_in_games
end
