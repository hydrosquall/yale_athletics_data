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
      Student.create!(:student_id => row[0], :name => row[1],
                      'high school'.to_sym => row[2], :hometown => row[3],
                      'ht.'.to_sym => row[4], 'no.'.to_sym => row[5],
                      :position => row[6], 'wt.'.to_sym => row[7],
                      :misc => row[8], :bio => row[9], :college => row[10],
                      :startseason => row[11], :endseason => row[12],
                      :major => row[13])
    end
  end
end
