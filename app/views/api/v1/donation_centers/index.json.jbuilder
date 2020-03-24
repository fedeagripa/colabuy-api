json.pharmacies do
  json.array! @pharmacies, :name, :lat, :long
end
json.general_supplies do
  json.array! @general_supplies, :name, :lat, :long
end
