class Mountain < ApplicationRecord
  # ActiveRecordのアソシエーション
  belongs_to :user
  has_many :comments

  # ActiveHashとのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :difficulty

  # バリデーション
  validates :name, presence: true
  validates :difficulty_id, presence: true, numericality: { other_than: 1, message: "を選択してください" } # id:1（'---'）は無効とする
end