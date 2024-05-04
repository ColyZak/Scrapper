require 'open-uri'

require 'rubygems'

require 'nokogiri'

def dark_trader()
   
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   

row = page.css('tr.cmc-table-row')

crypto_name_array = []
crypto_name_array_index = 0




  for i in 0...200
      begin
          title= page.css('tr.cmc-table-row')[i].css('td div')[2].text
    
          value = page.css('tr.cmc-table-row')[i].css('td div')[3].text
    
          result = Hash.new
        result[title] = value

        crypto_name_array[crypto_name_array_index] = result

        i += 1
        crypto_name_array_index += 1
        puts "on a ajoute #{result} a notre array"
        rescue NoMethodError
        value = page.css('tr.cmc-table-row')[i].css('td div a span')[3]
        title= page.css('tr.cmc-table-row')[i].css('td div a')[2]


        end
   
  
    end
    return crypto_name_array
end

dark_trader()