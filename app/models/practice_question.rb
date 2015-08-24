class PracticeQuestion < ActiveRecord::Base

  belongs_to :practice_interview , :class_name => "PracticeInterview", :foreign_key => "practice_interview_id"
  belongs_to :question
end
