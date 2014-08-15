json.array!(@parameter_groups) do |parameter_group|
  json.extract! parameter_group, :id, :name, :description, :pgn, :priority, :default_rate, :database_version, :category, :type, :size, :repeating_fields, :is_known
  json.url parameter_group_url(parameter_group, format: :json)
end
