# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://karadasenmon.site/"

SitemapGenerator::Sitemap.create do
  # アプリケーション内のsitemap生成先ディレクトリ
  SitemapGenerator::Sitemap.public_path = 'public/'
  # sitemap配置ディレクトリ
  SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

  SitemapGenerator::Sitemap.create do
    add '/', changefreq: 'daily', priority: 1.0

    add '/diagnosis', changefreq: 'daily', priority: 1.0
    add '/traffic_accident', changefreq: 'daily', priority: 1.0
    add '/recruitment', changefreq: 'daily', priority: 1.0
    add '/about', changefreq: 'daily', priority: 1.0
    add '/bruise', changefreq: 'daily', priority: 1.0
    add '/muscle', changefreq: 'daily', priority: 1.0
    add '/sleeping', changefreq: 'daily', priority: 1.0
    add '/lumbago', changefreq: 'daily', priority: 1.0
    add '/pain_shoulder', changefreq: 'daily', priority: 1.0
    add '/knee_pain', changefreq: 'daily', priority: 1.0
    add '/back_pain', changefreq: 'daily', priority: 1.0
    add '/stiff_shoulder', changefreq: 'daily', priority: 1.0
    add '/tenosynovitis', changefreq: 'daily', priority: 1.0
    add '/hallux_valgus', changefreq: 'daily', priority: 1.0
    add '/flat_foot', changefreq: 'daily', priority: 1.0
    add '/posture', changefreq: 'daily', priority: 1.0

    Notification.all.each do |n|
      add notification_path(n.id), lastmod: n.updated_at, changefreq: 'daily', priority: 0.7
    end

    Review.all.each do |r|
      add review_path(r.id), lastmod: r.updated_at, changefreq: 'daily', priority: 0.8
    end

    Blog.all.each do |b|
      add blog_path(b.id), lastmod: b.updated_at, changefreq: 'daily', priority: 0.9
    end
  end
  SitemapGenerator::Sitemap.ping_search_engines
end
