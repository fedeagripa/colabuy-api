class CreateDonationCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :donation_centers do |t|
      t.string :type
      t.string :name
      t.integer :lat
      t.integer :long

      t.timestamps
    end
  end
end
