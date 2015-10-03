json.array!(@nows) do |now|
  json.extract! now, :user_id, :now_position, :point
  json.url now_url(now, format: :json)
end