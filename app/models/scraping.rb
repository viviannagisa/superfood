Class Scraping

  def superfoods_lists

    require 'mechanize'
    agent = Mechanize.new
    page = agent.get("http://www.superfoods.or.jp/%E3%82%B9%E3%83%BC%E3%83%91%E3%83%BC%E3%83%95%E3%83%BC%E3%83%89%E3%81%A8%E3%81%AF-2/")
    title = page.at(".kakuronTexts strong")
    contents = page.at(".kakuronTexts br")
    image_url = page.at(".kakuronImage image")

    lists = Superfood_lists.where(title: title, image_url: image_url)
    lists.save

  