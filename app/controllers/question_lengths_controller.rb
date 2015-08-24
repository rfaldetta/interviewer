class QuestionLengthsController < ApplicationController
  def index
    @question_lengths = QuestionLength.all
  end

  def show
    @question_length = QuestionLength.find(params[:id])
  end

  def new
    @question_length = QuestionLength.new
  end

  def create
    @question_length = QuestionLength.new
    @question_length.name = params[:name]

    if @question_length.save
      redirect_to "/question_lengths", :notice => "Question length created successfully."
    else
      render 'new'
    end
  end

  def edit
    @question_length = QuestionLength.find(params[:id])
  end

  def update
    @question_length = QuestionLength.find(params[:id])

    @question_length.name = params[:name]

    if @question_length.save
      redirect_to "/question_lengths", :notice => "Question length updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @question_length = QuestionLength.find(params[:id])

    @question_length.destroy

    redirect_to "/question_lengths", :notice => "Question length deleted."
  end
end
