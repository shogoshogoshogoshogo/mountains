class CreateMountains < ActiveRecord::Migration[7.0]
  def change
    create_table :mountains do |t|
      t.string :name, null: false          # 山の名前
      t.integer :height                    # 山の標高
      t.string :location                   # 山の所在地
      t.date :date_climbed                 # 登山日
      t.integer :difficulty_id                # 難易度
      t.text :description                       # メモ
      t.references :user, null: false, foreign_key: true 
      t.timestamps
    end
  end
end