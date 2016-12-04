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
  validates :college, presence: true
  validates_inclusion_of :college, in: %w(Yale Harvard),
                                   allow_nil: false

  # imports csv file into db
  def self.import
    csv_text = File.read('../data/processed/player_bios_processed.csv')

    csv = CSV.parse(csv_text, headers: true :row_sep => :auto, :col_sep => ";")
    csv.each do |row|
      Student.create!(:student_id => row[0], :name => row[1], :city => row[2],
                      'high school'.to_sym => row[3], :hometown => row[4],
                      'ht.'.to_sym => row[5], 'no.'.to_sym => row[6],
                      :position => row[7], :region => row[8],
                      'wt.'.to_sym => row[9],
                      'active seasons'.to_sym => row[10], :misc => row[11],
                      :bio => row[12], :college => row[13])
    end
  end
end
