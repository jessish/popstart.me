class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :comment
      t.string :vendortype
      t.string :location

      t.timestamps
    end
  end
end
