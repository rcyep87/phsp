class TeachersController < ApplicationController

  def index
    render template: 'teachers/index.html.erb', locals: { teachers: Teacher.all }
  end

  def show
    if Teacher.exists?(params[:id])
      teacher = Teacher.find(params[:id])
      students = Student.all
      render template: 'teachers/show.html.erb', locals: { teacher: teacher, students: student }
    end
  end

end
