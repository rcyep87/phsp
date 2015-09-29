class SchoolsController < ApplicationController
  def index
    render template: 'schools/index.html.erb', locals: { school_list: School.all }
  end
end
