=begin
launchy 친구를 불러온다.
launchy에게 브라우저 열어달라고 한다.
=end

require "launchy"
require "uri"

#"https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=multicampus"
#Launchy.open()

url="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query="

keywords=["다스부츠","리그오브레전드","멋쟁이사자"]

# n=0
# while(n<3)
#     Launchy.open(url+keywords[n])
#     n=n+1
# end

keywords.each do |key|
    Launchy.open(url+key)
end