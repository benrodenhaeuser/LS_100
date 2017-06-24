# basic formatting for a table of contents

chapters = [

  {
    title: "learning ruby from scratch",
    page_number: 10,
    chapter_number: 1
  },

  {
    title: "next steps",
    page_number: 15,
    chapter_number: 2
  },

  {
    title: "resources",
    page_number: 30,
    chapter_number: 3
  }

]

line_width = 80

def format_chapter_number(chapter_number)
  return "chapter " + chapter_number.to_s
end

def format_page_number(page_number)
  return "page " + page_number.to_s
end

## now lets print the table of contents
chapters.each do |chapter|
  puts( format_chapter_number(chapter[:chapter_number]).ljust(line_width/4) + chapter[:title].ljust(line_width/2) + format_page_number(chapter[:page_number]).ljust(line_width/2) )
end
