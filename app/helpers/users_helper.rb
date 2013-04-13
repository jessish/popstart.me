module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    image_tag(user.avatar.url, alt: user.name, class: "gravatar")
  end
end
