class StudentsController < ApplicationController

  def index
    students = Student.where(teacher_id: params[:teacher_id]).find_each do |s|
                          puts "#{s.first_name} #{s.last_name}"
                          end
    render template: 'teachers/show.html.erb', locals: { students: students }
  end

end
