json.array!(@contactpersoons) do |contactpersoon|
  json.extract! contactpersoon, :id, :name, :function, :mail, :telephone, :note
  json.url contactpersoon_url(contactpersoon, format: :json)
end
