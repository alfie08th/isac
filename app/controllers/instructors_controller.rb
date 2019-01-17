class InstructorsController < ApplicationController

    i = 0
    20.times do
        Instructor.create do |instructor|
            instructor.username = Faker::Name.unique.name
            instructor.f_name = Faker::Name.first_name
            instructor.l_name = Faker::Name.last_name
            instructor.email = Faker::Internet.email
            instructor.salary = Faker::Number.between(40000, 100000)
            # salary = instructor.salary
            instructor.salary.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
            instructor.password = "123password"
            instructor.age = Faker::Number.between(18, 28)
            instructor.education = Faker::Job.education_level
            i+=1;
        end
    end

  def index
    @instructors = Instructor.all.reverse
  end

  def new
  end

  def create
  end

  def show
    @instructor = Instructor.find(params[:id])
    # @course = Cohort.find(params[:id])
    @cohort = Cohort.first
    # @course = Course.first
    # @course.instructors<<(@instructor)
    @cohort.instructors<<(@instructor)
    # @cohort.cohorts<<(@course)
    @job_title = Faker::Job.title
    @location = Faker::Nation.capital_city #=> "Kathmandu"
    @instructor.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
