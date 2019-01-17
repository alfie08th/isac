class Student < ApplicationRecord

    # has_many :student_notes, dependent: :destroy
    # has_many :cohorts, through: :members
    # has_one :user
    # Polymorphic relationship structure
    # has_one :user, as: :user_type, autosave: true, dependent: :destroy

    has_and_belongs_to_many :cohorts

end
