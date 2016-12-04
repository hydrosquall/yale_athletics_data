class Student < ApplicationRecord
  require 'csv'

  # associations
  has_one :university
  has_one :roster
  has_one :high_school

  # integrity constraints
  validates :name, presence: true
  # deny special characters
  # validates_format_of :name, with: /^[a-zA-Z]+$/
  # validates :college, presence: true
  # validates_inclusion_of :college, in: %w(Yale Harvard),
  #                                  allow_nil: false

  # imports csv file into db
  def self.import
    csv_text = File.read('../data/processed/player_bios_processed.csv')

    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      Student.create!(:student_id => row[0], :name => row[1], :hometown => row[2],
                      'ht.'.to_sym => row[3], 'no.'.to_sym => row[4],
                      :position => row[5], 'wt.'.to_sym => row[6],
                      :misc => row[7], :bio => row[8], :college => row[9],
                      :startseason => row[10], :endseason => row[11],
                      :major => row[12])
    end
  end
end
