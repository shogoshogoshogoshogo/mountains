class Mountain < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  belongs_to :comments
end
