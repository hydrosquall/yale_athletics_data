class HighSchool < ApplicationRecord
  require 'csv'

  # associations
  has_many :students

  # imports csv file into db
  def self.import
    csv_text = File.read('../data/processed/high_schools_processed.csv')
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      HighSchool.create!(:high_school_id => row[1],
                         'high school'.to_sym => row[2])
    end
  end
end
