class Article
  attr_accessor :title, :article_url, :quote, :alltop

  @@all = []

  def initialize(name,url,quote,alltop_obj)
    @title = name
    @article_url = url
    @quote = quote
    @alltop = alltop_obj
    @alltop.add_article(self)
end

def self.all
  @@all
end


end
