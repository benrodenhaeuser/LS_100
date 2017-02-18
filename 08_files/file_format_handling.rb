# "We will pull two files which contain articles originally gathered from feedzilla and slashdot. One in XML format. One in JSON. We will combine the two lists to a common format, sort them, and save them to CSV and XLS files."

require 'json'
require 'nokogiri'
require 'axlsx'
require 'csv'

slashdot_articles = []
File.open("./file_format_handling/slashdot.xml", "r") do |f|
  doc = Nokogiri::XML(f)
  slashdot_articles = doc.css('item').map { |i|
    {
      title: i.at_css('title').content,
      link: i.at_css('link').content,
      summary: i.at_css('description').content
    }
  }
end

feedzilla_articles = []
File.open("./file_format_handling/feedzilla.json", "r") do |f|
  items = JSON.parse(f.read)
  feedzilla_articles= items['articles'].map { |a|
    {
      title: a['title'],
      link: a['url'],
      summary: a['summary']
    }
  }
end

sorted_articles =  (feedzilla_articles + slashdot_articles).sort_by {|a| a[:title]}

# at this point, we have stored the data from our two sources in an array of hashes

## write the data to csv file
CSV.open("./file_format_handling/article.csv", "wb") do |csv|
  sorted_articles.each { |a| csv << [ a[:title], a[:link], a[:summary] ]  }
end

# write the data to xls file
pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
 sorted_articles.each { |a| sheet.add_row [a[:title], a[:link], a[:summary]] }
end
pkg.serialize("./file_format_handling/articles.xlsx")

# "To fully understand the examples above requires studying the various libraries we were using, and that's beyond the scope of this chapter. The main idea here is to show you how easy it is to work with various file types, given that you study the documentation on how to work with those file types."
