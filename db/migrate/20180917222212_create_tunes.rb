class CreateTunes < ActiveRecord::Migration[5.2]
  def change
    create_table :tunes do |t|
      t.string :tunename
      t.string :key
      t.string :tuning
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
