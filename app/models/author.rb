class Author < ApplicationRecord
  has_many :posts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable <-- enable to allow sign ups
  devise :database_authenticatable, :recoverable, :rememberable, :validatable
end
