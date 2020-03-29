class ChangeGeoFieldsDonationCenter < ActiveRecord::Migration[6.0]
  def change
    change_column :donation_centers, :lat, :decimal
    change_column :donation_centers, :long, :decimal
  end
end
