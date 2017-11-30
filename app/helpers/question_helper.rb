module QuestionHelper
  def question_private_to_literal(question_private)
    question_private ? 'SIM' : 'Não'
  end
end
