class Scraper

def self.scrape
  doc = Nokogiri::HTML(open("https://alltop.com/"))
  publication_names = doc.css("div.container p")
  publication_names.css("a").each do |node|
    title = node.children.text
    url = node.attribute("href").value
    AllTop.new(title,url)
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

def self.techcrunch_articles
Scraper.scrape_trending_items[46..53]
end

def self.wired_articles
Scraper.scrape_trending_items[54..61]
end

def self.nyt_articles
Scraper.scrape_trending_items[62..69]
end

def self.mashable_articles
Scraper.scrape_trending_items[70..77]
end

def self.wp_articles
Scraper.scrape_trending_items[78..85]
end

def self.npr_articles
Scraper.scrape_trending_items[86..93]
end

def self.reddit_articles
Scraper.scrape_trending_items[94..101]
end

def self.verge_articles
Scraper.scrape_trending_items[102..109]
end

def self.techmeme_articles
Scraper.scrape_trending_items[110..117]
end

def self.viral_articles
Scraper.scrape_trending_items[118..125]
end

def self.cnn_articles
Scraper.scrape_trending_items[126..133]
end

def self.bbc_articles
Scraper.scrape_trending_items[134..141]
end

def self.reuters_articles
Scraper.scrape_trending_items[142..149]
end

def self.recode_articles
Scraper.scrape_trending_items[150..157]
end



end
