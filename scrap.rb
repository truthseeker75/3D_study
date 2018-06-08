require 'httparty'
require 'nokogiri'

#1. naver에 원하는 정보가 담긴 페이지를 요청
#2. 네이버에서 받은 문서 안에 있는 원하는 정보를 빼온다.
#3. 빼온 정보를 출력한다.


res = HTTParty.get("https://search.daum.net/search?w=tot&DA=UME&t__nil_searchbox=suggest&sug=&sugo=15&sq=%EB%B9%84%ED%8A%B8%EC%BD%94%EC%9D%B8&o=4&q=%EB%B9%84%ED%8A%B8%EC%BD%94%EC%9D%B8")
val = Nokogiri::HTML(res).css("#speCurrencyColl > div.coll_cont > div > div.wrap_quote > div.graph_quote > div.graph_rate.stock_up > em.currency_value")

puts val

# doc = Nokogiri::HTML(res)
# kospi = doc.css("#KOSPI_now")
# puts kospi