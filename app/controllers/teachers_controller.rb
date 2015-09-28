class TeachersController < ApplicationController

  def index
    render template: 'teachers/index.html.erb', locals: { teachers: Teacher.all }
  end

end
