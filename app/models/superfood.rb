class Superfood < ActiveRecord::Base
  def self.superfood_page
    require 'mechanize'
    agent = Mechanize.new
    current_page = agent.get("http://ourage.jp/column/healthy_gohan/23042/")
    elements = current_page.search('div a img')

    elements.each do |ele|
      puts ele.get.attribute
  end
end
