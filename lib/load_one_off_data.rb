require 'nokogiri'
require 'open-uri'

#Load Share information, one-off

doc = Nokogiri::HTML(open('https://www.nzx.com/markets/NZSX/securities'))
count = 0
doc.css('div.detail tr').each do | share |
  #binding.pry
  if count != 0

    File.open("/home/adamra/rails-apps/sharetracker/temp.txt", 'a') {|f|
      f.write(
        '{:name => "'+share.children[3].attributes["alt"].value+'", :code => "'+share.children[1].children.children.text+'", :website_address => "https://www.nzx.com/markets/NZSX/securities/'+share.children[1].children.children.text+'"}'
      )
      f.write("\n")
    }
    # )
  end
  count = count+1

end
