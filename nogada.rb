# 1. 파일을 100개 만든다.
#  - 특정 폴더로 들어간다.
#  - 파일을 만든다.
# 2. 파일들(100개)의 이름을 수정한다.

puts Dir.pwd

Dir.chdir("files")
Dir.mkdir("fake")

puts Dir.pwd
puts Dir.entries(Dir.pwd)

20.times do |x|

    File.open("list#{x}.txt","w") do |f|
        f.write("이건 테스트 파일입니다.")    
    end

end