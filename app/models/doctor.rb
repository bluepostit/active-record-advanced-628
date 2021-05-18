class Doctor < ActiveRecord::Base
  has_many :interns
  # has_many(:patients, {through: :consultations})
  has_many :consultations
  has_many :patients, through: :consultations

  # validates :last_name, uniqueness: true
  validates :last_name, uniqueness: { scope: :first_name }
  validates :first_name, presence: true
end
