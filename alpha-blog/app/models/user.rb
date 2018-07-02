class User < ApplicationRecord
    has_many :articles
    before_save { self.email = email.downcase }
    
    # Reference: Active Record Validations, http://guides.rubyonrails.org/active_record_validations.html
    # user.valid?                 => false 
    # user.errors.full_messages 　=> (length)       ["Username is too short (minimum is 3 characters)"] 
    #                             => (uniqueness)   ["Username has already been taken"] 
    validates :username, presence: true,
                        uniqueness: { case_sensitive: false },
                        length: { minimum: 3, maximum: 25 }
                        
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+.[a-z]+\z/i
    # Reference: rubular.com, a Ruby regular expression editor
    
    validates :email, presence: true,
                        uniqueness: { case_sensitive: false },
                        length: { maximum: 105 },
                        format: { with: VALID_EMAIL_REGEX }
    
end