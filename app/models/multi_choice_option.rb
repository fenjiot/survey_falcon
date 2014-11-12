class MultiChoiceOption < ActiveRecord::Base
  validates :body, presence: true
end
