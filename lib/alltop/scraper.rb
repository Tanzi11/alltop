class Scraper
  attr_accessor :title

  @@all = []

  def initialize(title=nil)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end


def self.scrape
  doc = Nokogiri::HTML(open("https://alltop.com/"))
  publication_names = doc.css("div.container p")
  publication_names.css("a").collect do |name|
    title = name.children.text
end
end


# publication_names.css("a").children.collect do |name|
# title = name.text

# publication_names = doc.css("div.container p")
# name = publication_names.css("a").children.text

# def self.scrape_block
#   @scraping_block.each do |ele|
#   name = ele.css("a").text.strip
#   article = ele.css(".ellip ellip-line").text.strip
#   publication = self.new(name, article)
#   @@all << publication
#   binding.pry
# end
# publication
# end
#
# # def self.show_publication
# #   @@all.each.with_index(1) do |publication, i|
# #     puts "#{i}. #{publication.name}"
# #   end
# # end


end
