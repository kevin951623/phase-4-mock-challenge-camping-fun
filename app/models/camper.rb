class Camper < ApplicationRecord
    has_many :signups
    has many :activities, through: :signups
    validates :name, presence: true
    validates :age, length: { in: 8..18 }
  end
  