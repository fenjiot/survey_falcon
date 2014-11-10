class Question < ActiveRecord::Base
  validates :survey_id, presence: true

  belongs_to :style, polymorphic: true, dependent: :destroy
end
