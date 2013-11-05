# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.homebrewster.com"

SitemapGenerator::Sitemap.create do

  add new_user_registration_path, priority: 0.9, changefreq: "never"
  add new_user_session_path, priority: 0.8, changefreq: "never"

  add faq_path, priority: 0.7, changefreq: "never"
  add contact_path, priority: 0.6, changefreq: "never"
  add team_path, priority: 0.5, changefreq: "never"

  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
