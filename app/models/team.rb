class Team < ActiveRecord::Base
  has_many :teams, through: :player_in_teams
  belongs_to :league
end
