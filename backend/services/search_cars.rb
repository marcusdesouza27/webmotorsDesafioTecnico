module SearchCars
    include HTTParty 

    base_uri 'https://www.webmotors.com.br/api/search' 
    format :json
    headers 'Content-Type': 'application/json'
end