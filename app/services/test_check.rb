class TestCheck

    def initialize(user_answers={})
        @user_answers = user_answers
    end 
    
    def check
        score = 0
        correct_answers =[]
        @user_answers.each do |k,v|
            correct_answer = Question.where(id: k.to_i).first.answer
            score += 1 if correct_answer == v 
            correct_answers << correct_answer
        end       
        score
    end 
end 