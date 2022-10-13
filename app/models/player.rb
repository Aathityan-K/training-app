class Player < ApplicationRecord
    validates :Name, presence: true
    validates :Role, presence: true
    has_many :comments
end
