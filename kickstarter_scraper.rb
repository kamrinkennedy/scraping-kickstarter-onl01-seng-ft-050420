# require libraries/modules here
require 'nokogiri'
require 'open-uri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  
  # projects: kickstarter.css("li.project.grid_4")
  # name: project.css("h2.bbcard_name strong a").text 
  # img link: project.css("div.project-thumbnail a img").attribute("src").value
  # description: project.css("p.bbcard_burb").text
  binding.pry
end

create_project_hash