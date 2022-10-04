class StudentsController < ApplicationController
    def index
        all_students = Student.all
        render json: all_students
    end

    def grades
        stu_grades = Student.all.order(grade: :desc)
        render json: stu_grades
    end
end
