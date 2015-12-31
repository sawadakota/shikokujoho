require "csv"

models_csv = CSV.readlines("/db/models.csv")
models_csv.shift
models_csv.each do |row|
  Model.create(name: row[1], college: row[2], profile: row[3], created_at: row[4], updated_at: row[5], furigana: row[6], likes_count: row[7], birthday: row[8], college2: row[9], lovetype: row[10], highschool: row[11], charmpoint: row[12], personality: row[13])
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
