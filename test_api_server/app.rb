require "sinatra"
require "sinatra/reloader"

# http://www.ctabustracker.com/bustime/api/v1/gettime
get "/bustime/api/v1/gettime" do
  content_type "text/xml"
  send_file "index.xml"
end