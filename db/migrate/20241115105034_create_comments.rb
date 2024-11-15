class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :user ,foreign_key: true
      t.references :mountain, foreign_key: true
      t.text :tex
      t.timestamps
    end
  end
end