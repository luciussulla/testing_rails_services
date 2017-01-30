class TestCheck
    attr_reader :user_answers
    
    def initialize(user_answers={})
        @user_answers = user_answers
    end 
    
    def check
        score = 0 
        
        user_answers.each do |k,v| 
            question_id = k.first.to_i
            correct_answer = Question.find(question_id).answer
            user_answer = v
            score += 1 if correct_answer == user_answer 
        end 
        score
    end
    
    
   
end 