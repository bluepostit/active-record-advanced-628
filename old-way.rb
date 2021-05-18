house = Doctor.first
patients = []

house.consultations.each do |consultation|
  patients << consultation.patient
end

# All of Doctor House's patients:
p patients
