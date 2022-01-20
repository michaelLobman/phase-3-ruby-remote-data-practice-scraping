require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

courses = doc.css(".heading-35-semibold color-teal mb-20").text.strip

courses.each do |course|
    puts course.text.strip
end

p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0]

p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].name

p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].attributes
