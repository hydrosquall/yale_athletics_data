class Student < ApplicationRecord
  belongs_to :university
  belongs_to :roster
  belongs_to :high_school
end
