class Scraper
  attr_accessor :name, :link, :item




def self.scrape
  doc = Nokogiri::HTML(open("https://alltop.com/"))
  publication_names = doc.css("div.container p")
  publication_names.css("a").collect do |name|
    title = name.children.text
end
end

def self.scrape_quotes
  doc = Nokogiri::HTML(open("https://alltop.com/"))
  quotes = doc.css("div.container")
  quotes.css("a.one-line-ellipsis").map do |quote|
    list = quote.attribute("data-content").value.gsub(/<\/?[^>]*>/, "")
end
end

def self.scrape_trending_items
  doc = Nokogiri::HTML(open("https://alltop.com/"))
  items = doc.css("div.container li")
  items.css("a").collect do |item|
    line = item.children.text
end
end

end
