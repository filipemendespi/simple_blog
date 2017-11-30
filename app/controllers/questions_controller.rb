class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def show
    @question = Question.find_by_id(params[:id])
    @answer = Answer.new
  end

  def create
    @question = Question.new(permitted_params)
    @question.user = current_user

    if @question.save
      flash[:success] = 'Pergunta enviada com sucesso'

      redirect_to authenticated_root_path
    else
      flash.now[:error] = @question.errors.full_messages.first

      render :new
    end
  end

  private

  def permitted_params
    params.require(:question).permit(:title, :body, :privy)
  end
end
