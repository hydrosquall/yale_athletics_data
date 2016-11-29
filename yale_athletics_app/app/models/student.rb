class Student < ApplicationRecord
  require 'csv'

  # associations
  belongs_to :university
  belongs_to :roster
  belongs_to :high_school

  # import data from csv
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Student.create! row.to_hash
    end
  end
end
