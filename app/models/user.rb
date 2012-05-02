class User < ActiveRecord::Base
# Attributes
  attr_accessor :password #creates a virtual attr :password
  attr_accessible :name, :email, :password, :password_confirmation, :age,
                  :admin, :player, :coach, :team_manager, :league_manager

# Associations
  has_many :contracts
  has_many :teams, :through => :contracts
  
  has_many :assignments
  has_many :roles, :through => :assignments
  
# Validations
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, :presence => true,
                   :length => { :maximum => 50 }
  
  validates :email, :presence => true,
                    :format => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
                    
  validates :password, :presence => true,
                       :length => { :within => 3..40 },
                       :confirmation => true  
                       # automatically creates virtual attr password_confirmation

# Callbacks

  before_save :encrypt_password

# Public Methods

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end

  # similar to code above, but more idiomatically ruby (replaces if-ifelse)
  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end
  
# Private Methods

private

  def encrypt_password
    self.salt = make_salt if new_record?
    self.encrypted_password = encrypt(password)
  end
  
  def encrypt(string)
    secure_hash("#{salt}--#{string}")
  end
  
  def make_salt
    secure_hash("#{Time.now.utc}--#{password}")
  end
  
  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end

end
