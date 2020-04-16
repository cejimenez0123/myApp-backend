class PageUser < ApplicationRecord
    belongs_to :user
    belongs_to :page
    self.primary_key = "id"
end
