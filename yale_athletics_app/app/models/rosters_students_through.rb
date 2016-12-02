class RostersStudentsThrough < ApplicationRecord
  require 'csv'

  # associations
  has_one :roster
  has_one :student

  # imports csv file into db
  def self.import
    csv_text = File.read('../data/processed/rosters_players_processed.csv')
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      RostersStudentsThrough.create!(:student_id => row[1],
                                     :roster_id => row[2])
    end
  end
end
