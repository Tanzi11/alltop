class CLI

def call
  welcome
  puts "************************************************************"
  title_list
  get_user_input
  display_articles
  done
  exit
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
  input = nil
  puts "Where do you wish to go? Select a number or type exit:"
  until input == "exit" do
  input = gets.strip.to_i
  @selected_index = input - 1
  if input.between?(1,14)
    display_articles
      get_user_input
  else
    done
  end
end
end


def display_articles
alltop_obj = AllTop.all[@selected_index]
alltop_obj.articles.each do |article_obj|
  puts "************************************************************"
  puts "Article Headline: #{article_obj.title}\n\n "
  puts "Teaser: #{article_obj.quote}\n\n "
  puts "Link for Further Info: #{article_obj.article_url}"
end
end




def done
  puts "That's enough news for now. Until next time!"
end

end
