class Student < ApplicationRecord
  require 'byebug'
  require 'csv'
  # associations
  belongs_to :university
  belongs_to :roster
  belongs_to :high_school

  # import data from csv
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      debugger
      User.create! row.to_hash
    end
  end
end
