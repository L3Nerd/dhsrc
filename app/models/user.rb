class User < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role

  before_create :set_default_role

  private
  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end
end
