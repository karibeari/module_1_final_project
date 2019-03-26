class ChangeLengthDatatypeInTrails < ActiveRecord::Migration[5.2]
  def change
    change_column :trails, :length, :float
  end
end
