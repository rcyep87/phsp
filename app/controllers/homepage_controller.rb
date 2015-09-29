class HomepageController < ApplicationController

  def index
    render template: 'homepage/index.html.erb'
  end

  def show
    render template: 'homepage/show.html.erb'
  end

end
