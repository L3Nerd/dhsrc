class Team < ActiveRecord::Base
  has_many :players, through: :player_in_teams, counter_cache: true
  belongs_to :league
end
