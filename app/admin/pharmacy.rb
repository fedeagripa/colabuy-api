ActiveAdmin.register Pharmacy do
  permit_params :name, :lat, :long

  menu parent: 'DonationCenter'
end
