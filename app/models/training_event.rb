class TrainingEvent < ActiveRecord::Base
  has_one :training
  has_many :comments, as: :commentable
  has_and_belongs_to_many :player, counter_cache: true
end
