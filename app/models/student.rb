class Student < ApplicationRecord
  has_many :reviews
  validates :lesson, presence: true
  validates :name, presence: true
  validates :date, presence: true

end
