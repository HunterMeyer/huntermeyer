require 'open-uri'

class WeInsureController < ApplicationController
  def index
    url = 'http://weinsuregroup.com/search/?gmw_address%5B0%5D='
    url += params[:zip]
    url += '&gmw_post=post%20agents&gmw_distance=100&gmw_units=imperial&gmw_form=1&gmw_per_page=5&gmw_lat&gmw_lng&gmw_px=pt&action=gmw_post'
    doc = Nokogiri::HTML(open(url)); true

    people = doc.css('li.single-post'); true
    agent_id = 0
    @list = people.map do |person|
      agent_id += 1
      name_link = person.css('h2 a')
      url = name_link.attr('href').text
      {
        name: name_link.attr('title').text,
        id: agent_id,
        url: url.split('/?').first,
        lat: /(?<=lat=)(.*?)(?=&)/.match(url).to_s,
        lng: /(?<=lng=)(.*?)(?=&)/.match(url).to_s,
        distance: person.css('.radius').text,
        address: person.css('.address').text,
        phone: person.css('.phone .information').text,
        fax: person.css('.fax .information').text,
        email: person.css('.email .information').text,
        image: person.css('.post-thumbnail img').attr('src').text,
        about: person.css('.excerpt p').text,
        directions: person.css('.get-directions-link a').attr('href').text
      }
    end
    render json: { agents: @list }
  end
end
