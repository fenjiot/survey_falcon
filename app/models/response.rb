class Response < ActiveRecord::Base
  validates :user_id, presence: true
  validates :question_id, presence: true
  validates :answer_id, presence: true

  belongs_to :answer, polymorphic: true, dependent: :destroy
  belongs_to :user
end
