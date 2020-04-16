class Page < ApplicationRecord
    belongs_to :user 
    has_many :page_user
    has_many :users, through: :page_user
    self.primary_key = "id"
end
