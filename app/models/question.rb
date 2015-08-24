class Question < ActiveRecord::Base

  has_many :practice_interviews , :class_name => "PracticeQuestion", :foreign_key => "question_id"
  belongs_to :category , :class_name => "Category", :foreign_key => "category_id"
  belongs_to :question_length
end
