DatabaseCleaner.clean_with :truncation

Monologue::User.create(name: "blog_user", email:"blog_user@gmail.com", password: "laksjdhf", password_confirmation: "laksjdhf")

users_data = [
  ['PFN1', 'PLN1', 'a@gmail.com', 'laksjdhf'],
  ['PFN2', 'PLN2', 'b@gmail.com', 'laksjdhf'],
  ['PFN3', 'PLN3', 'c@gmail.com', 'laksjdhf'],
  ['PFN4', 'PLN4', 'd@gmail.com', 'laksjdhf'],
]

users_data.each do |first_name, last_name, email, password|
  User.create!({
    first_name: first_name,
    last_name: last_name,
    email: email,
    password: password,
  })
end

grades_data = [
  'Grade 1',
  'Grade 2',
  'Grade 3',
  'Grade 4',
  'Grade 5',
  'Grade 6',
  'Grade 7',
  'Grade 8',
  'Grade 9',
  'Grade 10',
  'Grade 11',
  'Grade 12',
  'University Freshman',
  'University Sophomore',
  'University Junior',
  'University Senior',
  'Master 1',
  'Master 2',
  'PhD',
]

grades_data.each do |name|
  Grade.create!({
    name: name,
  })
end

semesters_data = [
  'Spring',
  'Summer',
  'Fall',
]

semesters_data.each do |name|
  Semester.create!({
    name: name,
  })
end

week_days_data = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
]

week_days_data.each do |name|
  WeekDay.create!({
    name: name,
  })
end

schools_data = [
  ['YY Education', '111 Escondido Plaza', 'San Diego', 'CA', '92432'],
  ['XX Elemantary School', '222 ABC Street', 'Del Mar', 'CA', '92033'],
  ['ZZ Kindergarten', '333 DEF Rd.', 'La Jolla', 'CA', '92011'],
]

schools_objects = []
schools_data.each do |name, street, city, state, postal_code|
  schools_objects.push(
    School.new({
      name: name,
      street: street,
      city: city,
      state: state,
      postal_code: postal_code,
    })
  )
end

schools_objects.each do |o|
  o.save!
end

children_data = [
  ['FN1', 'LN1', 5, 1],
  ['FN2', 'LN2', 3, 1],
  ['FN3', 'LN3', 8, 2],
  ['FN4', 'LN4', 12, 3],
  ['FN5', 'LN5', 2, 4],
]

children_objects = []
children_data.each do |first_name, last_name, grade_id, user_id|
  children_objects.push(
    Child.new({
      first_name: first_name,
      last_name: last_name,
      grade_id: grade_id,
      user_id: user_id,
    })
  )
end

children_objects.each do |o|
  o.save!
end

course_data = [
  ['珠心算一级', Date.new(2015, 1, 1), Date.new(2015, 3, 1), 1, 1],
  ['珠心算一级', Date.new(2015, 3, 1), Date.new(2015, 5, 1), 1, 1],
  ['珠心算二级', Date.new(2015, 3, 1), Date.new(2015, 5, 1), 1, 1],
  ['珠心算三级', Date.new(2015, 5, 1), Date.new(2015, 8, 1), 1, 1],
  ['珠心算四级', Date.new(2015, 8, 1), Date.new(2015, 12, 1), 1, 1],
]
course_objects = []
course_data.each do |name, start_date, end_date, semester_id, school_id|
  course_objects.push(
    Course.new({
      name: name, 
      start_date: start_date,
      end_date: end_date,
      semester_id: semester_id,
      school_id: school_id,
    })
  )
end

course_objects.each do |o|
  o.save!
end

enrollments_data = [
  [1, 1],
  [1, 3],
  [1, 4],
  [1, 5],
  [2, 2],
  [2, 3],
]

enrollments_objects = []
enrollments_data.each do |child_id, course_id|
  enrollments_objects.push(
    Enrollment.new({
      child_id: child_id,
      course_id: course_id,
    })
  )
end

enrollments_objects.each do |o|
  o.save!
end
