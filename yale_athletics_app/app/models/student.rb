class Student < ApplicationRecord
  require 'csv'

  # associations
  has_one :university
  has_one :roster
  has_one :high_school

  # imports csv file into db
  def self.import
    csv_text = File.read('../data/processed/player_bios_processed.csv')
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      Student.create!(:student_id => row[0], :name => row[1], :city => row[2],
                      'high school'.to_sym => row[3], 'ht.'.to_sym => row[4],
                      'no.'.to_sym => row[5], :position => row[6],
                      :region => row[7], 'wt.'.to_sym => row[8],
                      'active seasons'.to_sym => row[9], :misc => row[10],
                      :bio => row[11], :college => row[12])
    end
  end
end
