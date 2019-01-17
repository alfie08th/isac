class Instructor < ApplicationRecord
    has_and_belongs_to_many :courses
    has_and_belongs_to_many :students
    has_and_belongs_to_many :cohorts
end
