class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :license
  belongs_to :age_class
  has_and_belongs_to_many :training_events, counter_cache: true
  has_many :teams, through: :player_in_teams
end
