class PracticeInterview < ActiveRecord::Base

  has_many :practice_questions , :class_name => "PracticeQuestion", :foreign_key => "practice_interview_id"
  has_many :questions, :through => :practice_questions
end
