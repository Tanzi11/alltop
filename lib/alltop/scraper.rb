class Scraper
  attr_accessor :name, :link, :item

def self.scrape_articles
  articles = []
  doc = Nokogiri::HTML(open("https://alltop.com/"))
  media_lists = doc.css("div.container p li")
  media_lists.each do |list|
    new_article = self.new
    new_article.name = list.css("a").children.text
    new_article.link = list.css("a").attribute("href").value
    new_article.item = list.css("a")
    articles << new_article
    binding.pry
  end
  articles
end
end



# def self.scrape
#   doc = Nokogiri::HTML(open("https://alltop.com/"))
#   publication_names = doc.css("div.container p")
#   publication_names.css("a").collect do |name|
#     title = name.children.text
# end
# end
#
# def self.scrape_quotes
#   doc = Nokogiri::HTML(open("https://alltop.com/"))
#   quotes = doc.css("div.container")
#   quotes.css("a.one-line-ellipsis").map do |quote|
#     list = quote.attribute("data-content").value.gsub(/<\/?[^>]*>/, "")
# end
# end
#
# def self.scrape_trending_items
#   doc = Nokogiri::HTML(open("https://alltop.com/"))
#   items = doc.css("div.container li")
#   items.css("a").collect do |item|
#     line = item.children.text
# end
# end
