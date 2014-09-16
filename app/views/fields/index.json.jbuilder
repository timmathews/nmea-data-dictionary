json.array!(@fields) do |field|
  json.extract! field, :id, :name, :description, :length, :scaling, :offset, :min_value, :max_value, :signalk_path
  json.url field_url(field, format: :json)
end
