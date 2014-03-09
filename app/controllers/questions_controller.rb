class QuestionsController < ApplicationController
  before_action :set_question, only: [:index, :show, :edit, :update, :destroy]


  # GET /questions
  # GET /questions.json
  def index
    render 'show'
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
   
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_question_id
      params[:id] || 1
    end

    def set_question
      begin
       
        @question = Question.find(get_question_id)

        unless cookies.has_key? :saw
          cookies[:saw] = "true"
          @question.total_views += 1
          @question.save
        end
      
        @text = @question.question_languages.where(language_name: cookies[:location])
        @answers = @question.answers.map {|answer| answer.answer_languages.where(language_name: cookies[:location]) }
      rescue
        redirect_to root_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:text, :total_views, :language_id)
    end
end
