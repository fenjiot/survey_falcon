class MultiChoiceAnswer < ActiveRecord::Base
  validates :body, presence: true
  validates :multi_choice_option_id, presence: true
end
