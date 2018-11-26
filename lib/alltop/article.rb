class Article
  attr_accessor :title, :article_url, :quote, :alltop

  def initialize(title,url,quote,alltop)
    @title = title
    @article_url = url
    @quote = quote
    @alltop = alltop
    @alltop.add_article(self)
end

end
