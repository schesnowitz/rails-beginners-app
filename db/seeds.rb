

user = User.create!(
email: 'steve@chesnowitz.com',
password: 'password',
password_confirmation: 'password',
first_name: 'Steve',
last_name: 'Chesnowitz',
username: 'Steve-O',
admin: true
)
puts user.inspect


user2 = User.create!(
  email: 's.chesnowitz@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'Layla',
  last_name: 'Chesnowitz',
  username: 'Layla Cookie'
  )
puts user2.inspect


50.times do
  post = Post.create!(
    title: Faker::Coffee.blend_name,
    body: Faker::Coffee.notes,
    user_id: rand(1..2)
  )
  puts post.inspect
end

500.times do
  comment = Comment.create!(
    body: Faker::Lorem.paragraph,
    post_id: rand(1..50),
    user_id: rand(1..2)
  )
  puts comment.inspect
end


app_setting = AppSetting.create!(
  theme_name: 'pulse',
  tab_name: 'acme_app'
)
puts app_setting.inspect


t1 = TemplateOne.create!(
  about_title: 'any text will do',
  about_text: 'any text will do',
  about_text_2: "some more text",
  about_image: ''
)
puts t1.inspect

