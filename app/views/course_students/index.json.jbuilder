json.array!(@course_students) do |course_student|
  json.extract! course_student, :id, :course_id, :student_id
  json.url course_student_url(course_student, format: :json)
end
