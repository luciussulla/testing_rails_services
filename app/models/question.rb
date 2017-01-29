class Question < ActiveRecord::Base
    enum category: [:tenses, :passives]
end
