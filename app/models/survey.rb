class Survey < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true

  has_many :questions, dependent: :destroy
end
