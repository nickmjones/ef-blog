class QuestionsController < ApplicationController

  def index
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to thanks_path, notice: "Post created."
    else
      render 'new'
    end
  end

  private

  def question_params
    params.require(:question).permit(:subject, :body)
  end

end
