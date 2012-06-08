class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers
  attr_accessible :content, :survey_id
end
