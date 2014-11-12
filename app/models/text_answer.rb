class TextAnswer < ActiveRecord::Base
  validates :body, presence: true

  has_one :response, as: :answer
end
