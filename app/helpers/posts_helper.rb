module PostsHelper
  TAG_PATTERN = %r{(</?.*?>)}

  def truncate_html(text, max_length = 30, ellipsis = "...")
    tag_free = text.gsub(TAG_PATTERN, '')
    truncate(tag_free, :length => max_length, :omission => ellipsis)
  end

  def five_most_recent_posts
    Post.find(:all, :order => "id desc", :limit => 5)
  end
end
