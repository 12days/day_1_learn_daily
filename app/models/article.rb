class Article < ActiveRecord::Base
 def self.random
  response = RestClient.get('http://en.wikipedia.org/wiki/Special:Random')
  page = Nokogiri::HTML(response)
  title = page.css('h1.firstHeading').text
  body = page.css('div#mw-content-text p').map{|p| p.text.gsub(/\[\d+\]/, ' ')}.join
  article = Article.find_or_create_by(title: title)
  article.body ||= OTS.parse(body).summarize(sentences: 1).map{|hash| hash[:sentence]}.join
  article
 end
end

