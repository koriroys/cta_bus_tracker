require "nokogiri"
require "open-uri"

class CtaBusApi

  def initialize(key: you_must_supply_a_key)
  end

  def current_time
    call_url "gettime"
    parsed_response.xpath("//tm").text
  end

  def routes
    call_url "getroutes"
    parsed_response.xpath("//route//rtnm").map(&:text)
  end

  private
  def call_url extension
    response = open("http://localhost:9292/bustime/api/v1/#{extension}")
    @parsed_response = Nokogiri.parse(response)
  end
  attr_reader :parsed_response
end
