class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :added
      t.string :email, null: false

      t.timestamps null: false
    end
  end
end
