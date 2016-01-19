class TrainingEvent < ActiveRecord::Base
  has_and_belongs_to_many :player, counter_cache: true
  has_many :comments, as: :commentable
end
