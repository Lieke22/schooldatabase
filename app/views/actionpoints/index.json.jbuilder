json.array!(@actionpoints) do |actionpoint|
  json.extract! actionpoint, :id, :action, :status, :datum
  json.url actionpoint_url(actionpoint, format: :json)
end
