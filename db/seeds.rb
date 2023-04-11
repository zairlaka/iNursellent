# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

expertises = [
  "Cardiac",
  "Maternity",
  "look correct",
  "Neurology",
  "ER",
  "Critical care",
  "ICU",
  "NICU",
  "Gastroenterology",
  "General surgery",
  "Gynaecology",
  "Haematology",
  "Nephrology",
  "Oncology",
  "Ophthalmology",
  "Orthopaedics",
  "Renal unit",
  "Urology",
  "Perioperative/surgical",
  "Pediatric/NICU",
  "ICU/CCU",
  "Other"
]
expertises.each do |e|
  Expertise.create!(name: e)
end

puts "===> Expertises Created"

institutes = [
  {name: 'Federal Institute of Health Sciences', address: 'Main Boulevard Road', country: 'Pakistan' },
  {name: 'MARS Institute of Health Sciences For Women', address: 'Main Boulevard Road', country: 'India' },
  {name: 'United Institute of Health Sciences', address: 'Main Boulevard Road', country: 'US' }
]
institutes.each do |i|
  HealthInstitute.create!(name: i[:name], address: i[:address], country: i[:country])
end

puts "===> Institutes Created"
