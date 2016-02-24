class AnswersController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy, :new, :index, :show]

  def index
  end

  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer  = Answer.new(params[:answer]) 
    @answer.question_id = @question.id
    @answer.user_id = current_user.id
    @answer.votes = 0

    if @answer.save
      flash[:success] = "Answer Added Successfully!"
      redirect_to @question
    else
      render 'new'
    end

  end

  def show
    @answer = Answer.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
    def answers_params
      params.require(:answer).permit(:user, :body)
    end
end
