50.times do
  school = School.create({
    name:          Faker::University.name })

  teacher = Teacher.create({
    first_name:    Faker::Name.first_name,
    last_name:     Faker::Name.last_name,
    school_id:     school.id })

  course = Course.create({
    name:            Faker::Commerce.department,
    teacher_id:      teacher.id })
end

7000.times do
  Student.create({
    first_name:      Faker::Name.first_name,
    last_name:       Faker::Name.last_name,
    teacher_id:      Faker::Number.between(1, 50) })
end
