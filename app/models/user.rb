class User < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
end
