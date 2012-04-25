class User < ActiveRecord::Base
# Attributes
  attr_assessor :password #creates a virtual attr :password
  attr_accessible :name, :email, :password, :password_confirmation

# Associations
  has_many :contracts
  
# Validations
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, :presence => true,
                   :length => { :maximum => 50 }
  
  validates :email, :presence => true,
                    :format => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
                    
  validates :password, :presence => true,
                       :length => { :within => 6..40 }
                       :confirmation => true  
                       # automatically creates virtual attr password_confirmation

# Callbacks

  before_save :encrypt_password

# Private Methods
private

  def encrypt_password
    self.encrypt_password = encrypt(password)
  end
  
  def encrypt(string)
    string
  end

end
