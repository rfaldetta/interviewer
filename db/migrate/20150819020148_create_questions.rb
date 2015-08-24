class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :interviewer
      t.string :response_length
      t.integer :category_id
      t.text :question

      t.timestamps

    end
  end
end
