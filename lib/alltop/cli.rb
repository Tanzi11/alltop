class CLI

def call
  welcome
  puts "************************************************************"
  title_list
  input = nil
    until input == "done"
      puts "Where do you want to go?"
      input = gets.chomp.to_i
end
end

def welcome
  puts "Welcome informed citizen!"
end

def title_list
  array = Scraper.scrape
  array_new = array.values_at(0,2,4,6,8,10,12,14,16,18,20,22,24,26)
  array_new.each_with_index do |array_new, i|
  puts "#{i+1}. #{array_new}"
end
end

# def fix_trending_items
#   array = Scraper.scrape_trending_items
# end
#
# def article_list
#   array_new = fix_trending_items.values_at(46..50)
#   array_new.each_with_index do |array_new, i|
#        puts "#{i+1}. #{array_new}"
#      end
#    end

def techcrunch
  puts Scraper.techcrunch_articles
end

def wired
  puts Scraper.wired_articles
end

# def article_list
#   array = Scraper.scrape_trending_items
#   array_new = array.values_at(46..-1)
#   array_new.each_with_index do |array_new, i|
#     puts "#{i+1}. #{array_new}"
# end
# end


def done
  puts "That's enough news for now. Until next time!"
end

end
