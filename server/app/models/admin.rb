class Admin < ApplicationRecord
  devise :database_authenticatable
  # attr_accessor :remember_token  
	before_save { email.downcase!  }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  									format: 	{ with: VALID_EMAIL_REGEX }

  validates :password, presence: true, length:  { minimum: 6 } , allow_nil: true
    def self.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
      BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end
    
    def self.new_token
      SecureRandom.urlsafe_base64
    end
    
    private
    def create_token  
      self.activation_token = Admin.new_token
    end

end
