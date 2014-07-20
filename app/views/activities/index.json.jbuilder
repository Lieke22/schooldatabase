json.array!(@activities) do |activity|
  json.extract! activity, :id, :type, :status, :datum, :name_user, :note
  json.url activity_url(activity, format: :json)
end
