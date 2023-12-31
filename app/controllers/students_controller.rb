class StudentsController < ApplicationController
    def index
        render json: Student.all, status: 200
    end

    def grades
        students_by_grade = Student.all.order(grade: :desc)
        render json: students_by_grade
    end
end
