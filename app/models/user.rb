class User < ActiveRecord::Base
    has_many :pages
    has_many :page_users
    has_many :pages, through: :page_users 
    
    has_secure_password
    self.primary_key = "id"
end
