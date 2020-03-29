ActiveAdmin.register DonationCenter do
  config.clear_action_items!

  index do
    column :id
    column :name
    column :lat
    column :long
    actions
  end
end
