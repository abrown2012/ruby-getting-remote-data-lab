# Write your code here
require 'net/http'
require 'open-uri'
require 'json'


class GetRequester 
    @@URL = ""
    def initialize(url_string)
        @@URL = url_string
    end

    def get_response_body
        uri = URI.parse(@@URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end 

    def  parse_json
        JSON.parse(get_response_body) 
    end 

end 
