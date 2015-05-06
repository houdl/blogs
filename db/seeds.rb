unless Rails.env.production?
  require 'database_cleaner'
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
end

user = User.create!(
  username: 'user',
  email: 'user@gmail.com',
  password: '123456789',
  avatar: File.open(Rails.root.join('db', 'seeds', 'tar.jpg'))
)

article = Article.create!(
  user: user,
  title: "my article",
  text: "welcome to my space"
)

comment = Comment.create!(
  user: user,
  article: article,
  body: 'very good!'
)
