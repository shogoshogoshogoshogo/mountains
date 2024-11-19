class Mountain < ApplicationRecord
  # ActiveRecordのアソシエーション
  belongs_to :user
  has_many :comments

  # ActiveHashとのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :difficulty
  belongs_to_active_hash :year
  belongs_to_active_hash :month
  belongs_to_active_hash :day

  # 年月日を組み合わせて保存する仮想属性
  attr_accessor :year_id, :month_id, :day_id

  before_validation :combine_date_climbed

  # バリデーション
  validates :name, presence: true
  validates :difficulty_id, presence: true, numericality: { other_than: 1, message: "を選択してください" } # id:1（'---'）は無効とする
end

private

def combine_date_climbed
  if year_id.present? && month_id.present? && day_id.present?
    self.date_climbed = Date.new(year_id.to_i, month_id.to_i, day_id.to_i) rescue nil
  end
end
