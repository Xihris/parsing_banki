class ParsingController < ApplicationController
  def ask
  end
  
  
  def index
   def parsing
 f = open("http://www.banki.ru/news/lenta/page#{@page}/?d=26&m=06&y=2017")
 @parse = Nokogiri::HTML(f)
 f.close
end

end_of_news = 55

@page = 1
@link = []
# @right_day = Date.today

@count = 55

while @count == end_of_news

 parsing

 @page += 1

 end_of_parse = @parse.css('.text-list--date').css('a')
 @count = end_of_parse.map{ |x| x.attr('href')}.map{ |u| u if u !~ /#reviewArea/ }.compact.count
 url = end_of_parse.map{ |x| x.attr('href') }

 url.each do |x|
   @link << "http://www.banki.ru#{x}" if x !~ /http/ && x !~ /#reviewArea/
 end

end
   end 
end
