admin_user = User.create!(nickname: "AdminUser", email: "admin@user", password: "adminuser", admin: "1")
User.create!(nickname: "OrdinaryUser", email: "ordinary@user", password: "ordinaryuser")

15.times do |i|
  i += 1
  article = Article.new(title: "記事#{i}のタイトルです", content: "これは記事内容です。", about_time: 10, user_id: admin_user.id)
  article.image.attach(io: File.open(Rails.root.join("public/images/image#{i}.jpg")),filename: "image#{i}.jpg")
  article.save!
end