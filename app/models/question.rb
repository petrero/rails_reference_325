class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers
  attr_accessible :content, :survey_id, :answers_attributes
  accepts_nested_attributes_for :answers, allow_destroy: true
end
