class AnswersController < ApplicationController
  def create
    @answer = Answer.new(permitted_params)
    @answer.user = current_user
    @answer.question_id = params[:question_id]

    if @answer.save
      flash[:success] = 'Resposta enviada com sucesso'
    else
      flash.now[:error] = @answer.errors.full_messages.first
    end

    redirect_to question_path(@answer.question_id)
  end

  private

  def permitted_params
    params.require(:answer).permit(:body)
  end
end
