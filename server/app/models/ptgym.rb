class Ptgym < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable
  attr_accessor :remember_token
  before_save { email.downcase! }
  validates :pt_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX }
  # unique: true 
  validates :password, presence: true, length: { minimum: 8 } , allow_nil: true
  validates :age, presence: true, numericality: { greater_than: 0, less_than: 100}
  validates :gender, numericality: {only_integer: true, less_than:2, message: "Gender seems wrong"}
  validates :phoneNumber , presence: true, numericality: { only_integer: true }, length: { is: 10 }
  validates :address, presence: true, length: {minimum: 8, maximum: 255}

  belongs_to :route_packages
  belongs_to :traning_packs 
  has_and_belongs_to_many :date_trainings, join_table: 'ptgym_datetraining'
  has_and_belongs_to_many :route_packages, join_table: 'ptgym_routepackage'

  # def self.digest(string)
  # cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
  # BCrypt::Engine.cost
  # BCrypt::Password.create(string, cost: cost)
  # end
  # def self.new_token
  # SecureRandom.urlsafe_base64
  # end
  # private
  # def create_token 
  # self.activation_token = Ptgym.new_token
  # #self.activation_digest = User.digest(activation_token)
  # end

end
