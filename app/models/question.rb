class Question < ActiveRecord::Base
  validates :survey_id, presence: true

  belongs_to :style, polymorphic: true, dependent: :destroy
  belongs_to :survey
  has_many :responses
end
