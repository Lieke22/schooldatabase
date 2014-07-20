json.array!(@schools) do |school|
  json.extract! school, :id, :name, :address, :postcode, :town, :telephone, :email, :website, :note
  json.url school_url(school, format: :json)
end
