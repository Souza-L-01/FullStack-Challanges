require 'faker'

5.times do
  user = User.create!(
    username: Faker::Name.name,
    email: Faker::Internet.email
  )
  10.times do
    post = Post.create!(
      title: Faker::Lorem.sentence(word_count: 5),
      url: Faker::Internet.url,
      user: user
    )
  end
end
