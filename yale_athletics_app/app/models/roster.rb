class Roster < ApplicationRecord
  require 'csv'

  # associations
  has_many :students
  has_one :university

  # integrity constraints
  validates :sport, presence: true
  # validates_format_of :sport, with: /[^a-zA-Z0-9 ]/
  validates :players, presence: true
  validates :college, presence: true
  validates_inclusion_of :college, in: %w(Yale Harvard),
                                   allow_nil: false

  # imports csv file into db
  def self.import
    csv_text = File.read('../data/processed/rosters_processed.csv')
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      Roster.create!(:season => row[1], :sport => row[2], :players => row[3],
                     :college => row[4])
    end
  end

end
