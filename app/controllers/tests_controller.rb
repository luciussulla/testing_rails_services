class TestsController < ApplicationController
    
    def generate_action()
        @var_lim = params[:limit]
        @user_choice = params.reject {|k,v| !v.to_i.between?(1,@var_lim.to_i)}
        @generated_test = TestGenerator.new(@user_choice, @var_lim).generate
    end
    
    def check_result
        @user_answers = params.reject { |k,v| !k.to_i.between?(1,1000) }
        @check_test = TestCheck.new(@user_answers).check
    end 
end 