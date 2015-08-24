class Category < ActiveRecord::Base

  has_many :questions , :class_name => "Question", :foreign_key => "category_id"
end
