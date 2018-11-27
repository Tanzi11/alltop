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
alltop_obj = AllTop.all[@selected_index]
alltop_obj.articles.each do |article_obj|
  binding.pry
  puts "Article Title: #{article_obj.title}\n\n"
  puts
  puts "For link: #{article_obj.article_url}"
  puts "For more info: "
end
end




def done
  puts "That's enough news for now. Until next time!"
end

end
