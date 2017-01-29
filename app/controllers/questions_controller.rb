class QuestionsController < ApplicationController
    def index
        @questions = Question.all 
    end 
    
    def show
        @question = Question.find(params[:id])
    end 
    
    def new 
        @question = Question.new
    end 
    
    def create
        @question = Question.create(question_params)
        @question.category = params[:category].to_i
        if @question.save 
            redirect_to @question    
        else 
          render 'new'    
        end    
    end     
    
    def edit 
        @question = Question.find(params[:id])
    end 
    
    private
    
    def question_params
        params.permit(:question_text, :answer)
    end 
    
end
