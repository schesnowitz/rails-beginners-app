

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
  about_image: '',
  service_icon_1: "fa fa-code",
  service_title_1: "some more text",
  service_text_1: "some more text",
  service_icon_2: "fa fa-code",
  service_title_2: "some more text",
  service_text_2: "some more text",
  service_icon_3: "fa fa-code",
  service_title_3: "some more text",
  service_text_3: "some more text",
  service_icon_4: "fa fa-code",
  service_title_4: "some more text",
  service_text_4: "some more text",
  service_title_5: "some more text",
  service_text_5: "some more text",
  main_process_title: "main_process_title",
  main_process_title_text: "main_process_title_text",
  process_icon_1: "some more text",
  sub_title_1: "sub_title_1",
  process_li_1: "process_li_1",
  process_li_2: "process_li_2",
  process_li_3: "process_li_3",
  process_li_4: "process_li_4",
  process_icon_2: "some more text",
  sub_title_2: "sub_title_2",
  process_li_5: "process_li_5",
  process_li_6: "process_li_6",
  process_li_7: "process_li_7",
  process_li_8: "process_li_8",
  process_icon_3: "some more text",
  sub_title_3: "sub_title_3t",
  process_li_9: "process_li_9",
  process_li_10: "process_li_10",
  process_li_11: "process_li_11",
  process_li_12: "process_li_12"
)
puts t1.inspect

