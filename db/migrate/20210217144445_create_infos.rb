class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.integer :venue_id
      t.integer :capacity
      t.string :dates
      t.float :rentalfee
      t.float :ceremonyfee
      t.float :perperson
      t.float :otherpp
      t.text :notes

      t.timestamps
    end
  end
end
