class MakeTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :city
      t.text :directions
      t.text :description
      t.integer :length
    end
  end
end
