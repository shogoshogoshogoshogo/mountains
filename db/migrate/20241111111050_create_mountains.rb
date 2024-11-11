class CreateMountains < ActiveRecord::Migration[7.0]
  def change
    create_table :mountains do |t|
      t.references :user, null: false, foreign_key: true
      t.references :mountain, null: false, foreign_key: true
      t.timestamps
    end
  end
end
