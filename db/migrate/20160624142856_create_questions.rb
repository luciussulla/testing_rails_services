class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text
      t.string :answer
      t.integer :category

      t.timestamps null: false
    end
  end
end
