class Player < ActiveRecord::Base
  has_many :teams, through: :player_in_teams
  belongs_to :user
  belongs_to :license
  belongs_to :age_class
end
