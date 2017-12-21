class FavoriteMailer < ApplicationMailer
  default from: "kylehashcraft@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@shrouded-mesa-39383.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@shrouded-mesa-39383.example>"
    headers["References"] = "<post/#{post.id}@shrouded-mesa-39383.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end 
end
