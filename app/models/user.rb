class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  has_many :recipes
  # has_many :favorites
  # has_many :comments

  with_options presence: true do
    validates :nickname
    validates :birthday
  end
  
  validates :gender_id, numericality: { other_than: 0 } 

end
