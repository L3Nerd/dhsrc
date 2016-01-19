class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :license
  belongs_to :age_class
end
