class User < ActiveRecord::Base
  has_many :items
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

#  validates :user_name, :email, presence: true
#  validates :user_name, :email, uniqueness: true
#  validates :email, length: { minimum: 3 }
#  validates :user_name, length: { minimum: 1 }

#  has_many :items
end
