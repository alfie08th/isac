class CoursesController < ApplicationController

  courses = ['ACCESSORY DESIGN', 'ADVERTISING''ANIMATION','ARCHITECTURAL HISTORY','ARCHITECTURE','ART HISTORY','BRANDED ENTERTAINMENT','BUSINESS OF BEAUTY AND FRAGRANCE','CINEMA STUDIES','GRAPHIC DESIGN']
    i = 0

    9.times do
        Course.create do |course|
            course.name = courses[i]
            course.hours = Faker::Number.between(200, 300)
            i+=1;
        end
    end

  def index
    @courses = Course.all.reverse
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
    @course = Course.find(params[:id])
    @cohort = Cohort.first
    @cohort.courses<<(@course)
  end

  def update
  end

  def destroy
  end
end
