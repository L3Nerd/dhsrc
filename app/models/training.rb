class Training < ActiveRecord::Base
  has_many :training_events
  has_and_belongs_to_many :age_classes
end
