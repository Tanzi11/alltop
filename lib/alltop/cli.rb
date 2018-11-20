class Alltop::CLI

def call
  welcome
  # title_list
  # article_list
  # done
end

def welcome
  puts "Welcome informed citizen! Where do you want today's news from?"
  Alltop::Scraper.scrape
  Alltop::Scraper.scrape_block
  Alltop::Scraper.show_publication
end


end
