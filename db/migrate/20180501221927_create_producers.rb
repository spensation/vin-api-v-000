class CreateProducers < ActiveRecord::Migration[5.1]
  def change
    create_table :producers do |t|
      t.string :name
      t.integer :established
      

      t.timestamps
    end
  end
end
