class Mountain < ApplicationRecord
  belongs_to :user
  belongs_to :comments
end
