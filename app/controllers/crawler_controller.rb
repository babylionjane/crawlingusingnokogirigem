require 'nokogiri'
require 'open-uri'

class CrawlerController < ApplicationController
  def index
    url = "https://tv.naver.com/r/"
    doc = Nokogiri::HTML(open(url))
    topthree = doc.css('.tit span')
    @topthree_text = topthree.map{|three|three.text}
  end
end
