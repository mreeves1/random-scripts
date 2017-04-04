#!/usr/bin/env ruby                                                             
                                                                                
require 'httparty'                                                              
require 'nokogiri'                                                              
require 'pp'                                                                    
                                                                                
host = 'http://www.sonomacounty.com'                                            
path = '/mmg-grid-pages-post/'                                                  
                                                                                
body = {                                                                        
  start: 1,                                                                     
  mmg_grid_pages_action: 'filters',                                             
  supertag_group_id: 27,                                                        
  increment: 428, #10 - 428 total..                                             
  seed: 1372111219,                                                             
  from_more_button: 1                                                           
}                                                                               
                                                                                
headers = {}                                                                    
response = HTTParty.post("#{host}#{path}", body: body, headers: headers)        
obj = JSON.parse(response.body)                                                 
listings = obj['listings']                                                      
                                                                                
puts response.code                                                              
puts response.message                                                           
                                                                                
document = Nokogiri::HTML(listings)                                             
lis = document.search('li')                                                     
results = []                                                                    
lis.each do |li|                                                                
  temp = {}                                                                     
  temp[:name] = li.search('a.grid-title-link')[0].text                          
  web_html = li.search('a.website-button-link')                                 
  temp[:website] = web_html && web_html[0] ? web_html[0]['href'] : nil          
  temp[:address] = li.search('div.address')[0].text                             
  temp[:city_state_zip] = li.search('div.address')[0].next.text.strip           
  temp[:phone] = li.search('div.local-phone')[0].text                           
  # pp temp                                                                     
  results << temp                                                               
end                                                                             
                                                                                
puts results
