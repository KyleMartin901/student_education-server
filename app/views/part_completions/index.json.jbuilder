json.array!(@part_completions) do |part_completion|
  json.extract! part_completion, :id, :student_id, :lesson_part_id
  json.url part_completion_url(part_completion, format: :json)
end
