class CreateQuestionLengths < ActiveRecord::Migration
  def change
    create_table :question_lengths do |t|
      t.string :name

      t.timestamps

    end
  end
end
