class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(created_at: :"DESC")
    @question = Question.new
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)

    flash[:notice] = "登録完了しました！"
    redirect_to action: 'index'
  end

  private
    def question_params
      params.require(:question).permit(:title, :detail)
    end

end
