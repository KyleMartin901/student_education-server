# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Lesson.destroy_all
LessonPart.destroy_all

100.times do |index|
  lesson = Lesson.create(title: "L#{index}", position: index)

  lesson.lesson_parts.create([
    {title: "P1", position: 1, lesson_id: lesson.id},
    {title: "P2", position: 2, lesson_id: lesson.id},
    {title: "P3", position: 3, lesson_id: lesson.id}
  ])
end

p "Created #{Lesson.count} lessons with 3 parts each"

student_count = 0
3.times do |n|
  teacher = Teacher.create(name: "Teacher#{n}")

  30.times do
    User.create(name: "Student#{student_count}", teacher_id: teacher.id)
    student_count = student_count + 1 
  end
end

p "Created #{Teacher.count} teachers with 30 students each"
