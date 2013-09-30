module ArticleHelper
 def random
  response = RestClient.get('http://en.wikipedia.org/wiki/Special:Random')
  page = Nokogiri::HTML(response)
 end
end
