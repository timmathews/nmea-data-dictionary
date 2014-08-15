json.array!(@fields) do |field|
  json.extract! field, :id, :name, :description, :byte_pos, :bit_pos, :length, :type, :scaling, :offset, :units, :min_value, :max_value, :signalk_path
  json.url field_url(field, format: :json)
end
