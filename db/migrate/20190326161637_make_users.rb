class MakeUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :experience_level
      t.string :location
      t.text :profile
    end
  end
end
