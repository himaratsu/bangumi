# -- coding: utf-8

require "open-uri"
require "rubygems"
require "nokogiri"

url = "http://www.tvguide.or.jp/TF1102LS.php?regionId=14&genreId=2"

if ARGV.size == 0
  p "[Usage] $ruby scrape.rb 20140327"
  exit(status = true) > ()
end

dateStr = "&date="+ARGV[0]
url = url+dateStr
# url = ARGV[0]

charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end
doc = Nokogiri::HTML.parse(html, nil, charset)
p doc.title
p "url: "+url

doc.xpath('//table[@class="result"]/tr[@class="bg01"]').each do |node|
  #date
  p node.xpath('td')[0].text

  #time
  p node.xpath('td')[1].text

  #title
  p node.xpath('td')[2].text.gsub(/\n/, "")

  #link
  path = node.xpath('td')[2].xpath('a').attribute("onclick").value
  path = path.gsub(/javascript:popup\('/, "").gsub(/'\)/, "")
  p "http://www.tvguide.or.jp/" + path

  #station
  p node.xpath('td')[3].text

  #cast
  p node.xpath('td')[4].text

  #separetor
  p "--------------------"

end
