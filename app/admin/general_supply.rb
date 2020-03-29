ActiveAdmin.register GeneralSupply do
  permit_params :name, :lat, :long

  menu parent: 'DonationCenter'
end
