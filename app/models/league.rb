class League < ActiveRecord::Base
  belongs_to :license
  has_many :teams

  validates :name, presence: true
end
