class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references :player
      t.references :tournament

      t.timestamps null: false
    end
  end
end
