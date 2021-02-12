describe 'SearchForCars' do
    it 'getCars' do
        @cars = SearchCars.get('/car?url=https://www.webmotors.com.br/carros%2Festoque%2Fhonda%2Fcity%3Festadocidade%3Destoque%26marca1%3DHONDA%26modelo1%3DCITY%26autocomplete%3Dhonda%20city%26autocompleteTerm%3DHONDA%20CITY&actualPage=1&displayPerPage=10&order=1&showMenu=false&showCount=true&showBreadCrumb=false&testAB=false&returnUrl=false')
        puts @cars.parsed_response 
    end

end