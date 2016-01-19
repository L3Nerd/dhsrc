class Player < ActiveRecord::Base
  has_and_belongs_to_many :training_events
  has_many :teams, through: :player_in_teams
  belongs_to :user
  belongs_to :license
  belongs_to :age_class
end
