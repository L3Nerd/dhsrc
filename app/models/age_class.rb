class AgeClass < ActiveRecord::Base
  has_many :players
  has_and_belongs_to_many :trainings

  validates :name, :from, :to, presence: true
  validate :from_cannot_be_greater_than_to


  private

  def from_cannot_be_greater_than_to
    return unless from and to
    errors.add(:from, "can't be greater than to") unless from < to
  end
end
