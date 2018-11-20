class Alltop::Scraper
attr_accessor :name, :article

@@all = []

def initialize(name, article)
  @name = name
  @article = article
end

def self.all
  @@all
end

def self.scrape
  @doc = Nokogiri::HTML(open("https://alltop.com"))
  @scraping_block = @doc.css(".col-xs-12 col-md-4")
end

def self.scrape_block
  @scraping_block.each do |ele|
  name = ele.css("a").text.strip
  article = ele.css(".ellip ellip-line").text.strip
  publication = self.new(name, article)
  @@all << publication
end
end

def self.show_publication
  @@all.each.with_index(1) do |publication, i|
    puts "#{i}. #{publication.name}"
  end
end


end
