require "nokogiri"
require "open-uri"

class CtaBusApi

  def initialize(key: you_must_supply_a_key)
    response = open("http://localhost:9292/bustime/api/v1/gettime")
    @parsed_response = Nokogiri.parse(response)
  end

  def current_time
    parsed_response.xpath("//tm").text
  end

  private

  attr_reader :parsed_response
end