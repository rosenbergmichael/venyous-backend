class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :image
      t.string :location
      t.float :esttotal

      t.timestamps
    end
  end
end
