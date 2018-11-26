class CLI

def call
  welcome
  puts "************************************************************"
  title_list
  get_user_input
  display_articles
  # menu
      # case input
      # when input "1"
      #   article_list
      # end
end

def welcome
  puts "Welcome informed citizen!"
end

def title_list
  Scraper.scrape
  AllTop.all.each_with_index do |alltop_obj, i|
  puts "#{i+1}. #{alltop_obj.news_name}"
end
end

def get_user_input
  puts "Select the number:"
  input = gets.strip.to_i
  @selected_index = input - 1
end

def display_articles
  binding.pry
Scraper.scrape
AllTop.all.each do |alltop_obj, i|
  puts "#{alltop_obj.articles.first}"
end
end



# def menu
#   input = nil
#     until input == "done"
#       puts ""
#       puts "Where do you want to go?"
#       input = gets.chomp.to_i
#
#       if input.to_i == "1"
#         puts "TechCrunch"
#         puts "#{article_obj}"
# end
# end




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
