# basic formatting for a table of contents

first_chapter_title = "learning ruby from scratch"
first_chapter_page = "10"

second_chapter_title = "next steps"
second_chapter_page = "15"

third_chapter_title = "resources"
third_chapter_page = "30"

line_width = 80

def the_chapter(chapter_number)
  return "chapter " + chapter_number.to_s
end

def the_page(chapter_page)
  return "page " + chapter_page
end

puts( the_chapter(01).ljust(line_width/4) + first_chapter_title.ljust(line_width/2) + the_page(first_chapter_page).ljust(line_width/2) )
puts( the_chapter(02).ljust(line_width/4) + second_chapter_title.ljust(line_width/2) + the_page(second_chapter_page).ljust(line_width/2) )
puts( the_chapter(03).ljust(line_width/4) + third_chapter_title.ljust(line_width/2) + the_page(third_chapter_page).ljust(line_width/2) )
