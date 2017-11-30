class HomeController < ApplicationController
  def index
    @questions = Question.list.paginate(page: params[:page], per_page: 10)
  end
end
