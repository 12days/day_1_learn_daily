module ArticleHelper
 def random
  response = RestClient.get('http://en.wikipedia.org/wiki/2013_America%27s_Cup')
  page = Nokogiri::HTML(response)
 end
end
