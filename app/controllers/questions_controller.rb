class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    
    if @question.save
      flash[:success] = "Question Added Successfully!"
      redirect_to @question
    else
      render 'new'
    end

  end

  def show
    #@question = Question.find(params[:id])
  end

end
