class QuestionsController < ApplicationController

  before_filter :signed_in_user, only: [:create, :destroy, :new]
  
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])

    @question.user_id = current_user.id
    
    if @question.save
      flash[:success] = "Question Added Successfully!"
      redirect_to root_url
    else
      render 'new'
    end

  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
