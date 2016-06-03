json.array!(@courses) do |course|
  json.extract! course, :id, :title, :description, :credits
  json.url course_url(course, format: :json)
end
