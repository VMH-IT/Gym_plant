class Gymer < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  									format: 	{ with: VALID_EMAIL_REGEX }
  validates :age, presence: true, numericality: { greater_than: 0, less_than: 100}
  validates :gender, numericality: {only_integer: true, less_than:2, message: "Gender seems wrong"}
  validates :phonenumber , presence: true, numericality: { only_integer: true }, length: { is: 10 }
  validates :address, presence: true, length: {minimum: 8}
  validates :password , length: {minimum: 8}

end
