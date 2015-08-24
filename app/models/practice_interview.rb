class PracticeInterview < ActiveRecord::Base

  validates :user_id, :presence => true

  has_many :practice_questions , :class_name => "PracticeQuestion", :foreign_key => "practice_interview_id"
  has_many :questions, :through => :practice_questions
  belongs_to :user
end
