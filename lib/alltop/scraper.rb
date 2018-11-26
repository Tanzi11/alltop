class Scraper

def self.scrape
  doc = Nokogiri::HTML(open("https://alltop.com/"))
  publication_names = doc.css("div.col-xs-12.col-md-4")
  publication_names.each do |node|
    node.css("p a")[0..-2].each do |ele|
      title = ele.text.split("(")[0]
      url = ele.attribute("href").value
      AllTop.new(title,url) unless title.empty?
  end
     alltop_obj = AllTop.all.last
     node.css("ul").each do |li|
       name = li.css("a").children[0].text
       url = li.css("a.one-line-ellipsis").attribute("href").value
       quote = li.css("a.one-line-ellipsis").attribute("data-content").value.split("<br>")[1]
       article_obj = Article.new(name,url,quote,alltop_obj)
      end
end
end
end
