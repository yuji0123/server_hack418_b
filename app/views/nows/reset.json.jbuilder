json.array!(@nows) do |now|
  json.extract! now, :user_id, :now_position_x, :now_position_y, :point, :name
  json.url now_url(now, format: :json)
end