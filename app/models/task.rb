class Task < ApplicationRecord
    belongs_to :user 
    validates :name, :details,presence: true
end
