json.array!(@lesson_parts) do |lesson_part|
  json.extract! lesson_part, :id, :title, :position, :lesson_id
  json.url lesson_part_url(lesson_part, format: :json)
end
