class StudentsController < ApplicationController

    courses = ['ACCESSORY DESIGN', 'ADVERTISING''ANIMATION','ARCHITECTURAL HISTORY','ARCHITECTURE','ART HISTORY','BRANDED ENTERTAINMENT','BUSINESS OF BEAUTY AND FRAGRANCE','CINEMA STUDIES',
    'CREATIVE BUSINESS LEADERSHIP','DESIGN FOR SUSTAINABILITY','DESIGN MANAGEMENT','DRAMATIC WRITING','EQUESTRIAN STUDIES','FASHION MARKETING AND MANAGEMENT','FASHION','FIBERS',
    'FILM AND TELEVISION','FURNITURE DESIGN','GRAPHIC DESIGN','ILLUSTRATION','IMMERSIVE REALITY','INDUSTRIAL DESIGN',
    'INTERACTIVE DESIGN AND GAME DEVELOPMENT','INTERIOR DESIGN','JEWELRY','LUXURY AND FASHION MANAGEMENT','MOTION MEDIA DESIGN']

    i = 0

    courses.length.times do
        Student.create do |student|
            student.f_name = Faker::Name.first_name
            student.l_name = Faker::Name.last_name
            student.birthday = Faker::Date.birthday(70, 99)
            student.education = Faker::Job.education_level
            i+=1;
        end
    end

  def index
    @students = Student.all.reverse
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
    @student = Student.find(params[:id])
    @title = "student"
    @location = Faker::Nation.capital_city #=> "Kathmandu"
    @cohort = Cohort.first
    @points = Faker::Number.between(100, 500)
    @cohort.students<<(@student)
  end

  def update
  end

  def destroy
  end
end
