require 'nokogiri'
require 'open-uri'

def define_page
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
end

# -----------------------------  extract crypto's name   -------------------------------------

def extract_crypto
  page = define_page
  all_symbols = page.css('.cmc-table__column-name--narrow-layout .cmc-table__column-name--symbol')
  list_cryptos = []

  all_symbols.each {|crypto| list_cryptos.push(crypto.text)}
  return list_cryptos
end

# -----------------------------  extract crypto's value   -------------------------------------

def extract_values
  page = define_page
  all_prices = page.xpath('//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody //td[contains(@class, "cmc-table__cell--sort-by__price")]/div/a/span')
  list_values = []

  all_prices.each {|value| list_values.push(value.text.gsub(/[$,]/, '').to_f)}
  return list_values
end

# -----------------------------  Build  Hash name/value  -----------------------------------------

def create_final_array

  list_cryptos = extract_crypto
  list_values = extract_values
  final_list = []

  final_list = list_cryptos.zip(list_values).map { |crypto, value| {crypto => value} }

end
