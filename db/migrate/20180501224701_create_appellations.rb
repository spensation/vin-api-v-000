class CreateAppellations < ActiveRecord::Migration[5.1]
  def change
    create_table :appellations do |t|
      t.string :name
      t.string :tier
      t.string :region
      t.references :country
      t.references :producer

      t.timestamps
    end
  end
end
