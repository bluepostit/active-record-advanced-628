class Doctor < ActiveRecord::Base
  has_many :interns
  # has_many(:patients, {through: :consultations})
  has_many :consultations
  has_many :patients, through: :consultations
end
