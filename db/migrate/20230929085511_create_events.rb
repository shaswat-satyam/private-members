class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :date
      t.text :venue
      t.integer :user_id

      t.timestamps
    end
  end
end
