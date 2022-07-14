require 'rubygems'
require 'nokogiri'
require 'open-uri'





#----- Méthode pour récupérer les noms des crypto et les prix--------------

def method_trader
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   
  all_symbols = page.css('.cmc-table__column-name--narrow-layout .cmc-table__column-name--symbol')
  all_prices = page.css('.cmc-link span')[(2..21)]
  
  arr1 = []
  arr2 = []

  all_symbols.each {|indice| arr1.push(indice.text)}
  all_prices.each {|symbol| arr2.push(symbol.text.gsub(/[$,]/,'').to_f)}

  my_hash = Hash[arr1.zip(arr2)].map{|k, v| {k => v}}
end
print method_trader

