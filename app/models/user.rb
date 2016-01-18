class User < ActiveRecord::Base
  devise :invitable, :database_authenticatable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
end
