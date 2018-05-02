class CreateVarietals < ActiveRecord::Migration[5.1]
  def change
    create_table :varietals do |t|
      t.string :name
      t.string :country_of_origin
      t.references :appellation

      t.timestamps
    end
  end
end
