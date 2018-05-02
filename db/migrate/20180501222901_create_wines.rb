class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :vintage
      t.string :category
      t.float :price
      t.references :producer

      t.timestamps
    end
  end
end
