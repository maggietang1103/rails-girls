json.array!(@maggies) do |maggy|
  json.extract! maggy, :id, :name, :description, :picture, :remark
  json.url maggy_url(maggy, format: :json)
end
