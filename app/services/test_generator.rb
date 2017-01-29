
class TestGenerator 
    attr_reader :category, :limit, :text 
    
    def initialize(user_params=[], limit)
        @user_params = user_params
        @limit = limit.to_i
    end 
    
    def select_category(user_params)
        selected_categories = []
        user_params.each do |k,v| 
            if v == "1"
                if k == "tenses" 
                    k = 0
                    selected_categories << k 
                elsif k == "passives"
                    k = 1
                    selected_categories << k 
                end     
            end 
        end 
        selected_categories
    end     
    
    def generate
        questions_array = []
        select_category(@user_params).each do |cat|
            questions_array<< Question.where(category: cat) 
        end 
        questions_array.flatten.shuffle.take(@limit)
    end 
end 