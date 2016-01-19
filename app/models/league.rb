class League < ActiveRecord::Base
  belongs_to :license
  has_many :teams
end
