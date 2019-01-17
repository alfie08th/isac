class CohortsController < ApplicationController

#   courses = ['ACCESSORY DESIGN', 'ADVERTISING''ANIMATION','ARCHITECTURAL HISTORY','ARCHITECTURE','ART HISTORY','BRANDED ENTERTAINMENT','BUSINESS OF BEAUTY AND FRAGRANCE','CINEMA STUDIES']
#     i = 0

#     9.times do
#         Cohort.create do |cohort|
#             cohort.start_date = Faker::Date.between(250.days.ago, Date.today)
#             cohort.end_date = Faker::Date.between(200.days.ago, Date.today)
#             cohort.course_id = 1
#             cohort.student_id = 1
#             cohort.instructor_id =1
#             i+=1;
#         end
#     end

    date = Faker::Date.between(250.days.ago, Date.today)
    Cohort.create(start_date: date, end_date: date, course_id: 1, student_id: 1, instructor_id: 1)
  def index
    @cohorts = Cohort.all.reverse

  end

  def new
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
