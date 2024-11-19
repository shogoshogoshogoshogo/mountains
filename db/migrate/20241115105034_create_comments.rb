class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :content              # コメントの内容
      t.references :user, null: false, foreign_key: true # ユーザーとの関連
      t.references :mountain, null: false, foreign_key: true # 山との関連
      t.timestamps
    end
  end
end