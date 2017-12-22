module UsersHelper
  def user_has_posts?(user)
    user.posts.count > 0
  end
end
