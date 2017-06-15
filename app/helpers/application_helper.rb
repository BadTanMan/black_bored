module ApplicationHelper
  def gravatar_for(user, opts = {})
    opts[:alt] = user.name
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}",
              opts
  end
end

module DeviseHelper
  def devise_error_messages1!
    resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
  end

  def devise_error_messages2!
    resource.errors.full_messages.map { |msg| content_tag(:p, msg) }.join
  end
end