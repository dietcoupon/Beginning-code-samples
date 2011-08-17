require 'net/http'
require 'uri'
require 'cgi'
def search(query)
  terms = CGI::escape(query)
  html = Net::HTTP.get(URI.parse('http://www.google.com/search?q=' + terms))
  beginning = html.index("About ")+6
  working_string = html[beginning..(html.length)]
  output = working_string.slice(/[0-9,]+/).delete ","
  output.to_i
end