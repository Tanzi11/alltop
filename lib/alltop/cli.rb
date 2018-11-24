class CLI

def call
  welcome
  puts "************************************************************"
  title_list
  puts "************************************************************"
  article_list
  # done
end

def welcome
  puts "Welcome informed citizen! Where are you itching to go today?"
end

def title_list
  array = Scraper.scrape
  array_new = array.values_at(0,2,4,6,8,10,12,14,16,18,20,22,24,26)
  array_new.each_with_index do |array_new, i|
  puts "#{i+1}. #{array_new}"
end
end

def article_list
  array = Scraper.scrape_trending_items
  array_new = array.values_at(46..-1)
  array_new.each_with_index do |array_new, i|
    puts "#{i+1}. #{array_new}"
end
end

end

# array_new = array.partition.each_with_index{ |el, i| i.even? }
# list = array_new[0].delete_if {|i| i == "About" || i == "Privacy Policy" || i == "AllTop.com"}
