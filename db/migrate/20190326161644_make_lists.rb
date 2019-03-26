class MakeLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.references :user
      t.references :trail
      t.boolean :completed
      t.integer :rating
      t.text :review
    end
  end
end
