class CreateAppellationsVarietalsJoinTable < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :appellations, :varietals
  end
end
