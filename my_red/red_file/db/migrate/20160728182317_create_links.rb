class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.integer :user_id
      t.string :name

      t.timestamps null: false
    end
  end
end
