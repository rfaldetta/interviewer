class Question < ActiveRecord::Base

  validates :user_id, :presence => true
  validates :question_length_id, :presence => true
  validates :category_id, :presence => true
  validates :question, :presence => true, :uniqueness => true

  has_many :practice_interviews , :class_name => "PracticeQuestion", :foreign_key => "question_id"
  belongs_to :category , :class_name => "Category", :foreign_key => "category_id"
  belongs_to :question_length
end
