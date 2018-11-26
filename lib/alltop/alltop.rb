class AllTop
  attr_accessor :news_name, :news_url, :articles
  @@all = []

  def initialize(name,url)
    @news_name = name
    @news_url = url
    @articles = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_article(article_obj)
    @articles << article_obj
    # article_obj.alltop ||= self
  end


end
