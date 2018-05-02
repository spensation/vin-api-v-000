class CreateAppelations < ActiveRecord::Migration[5.1]
  def change
    create_table :appelations do |t|
      t.string :name
      t.string :tier

      t.timestamps
    end
  end
end
