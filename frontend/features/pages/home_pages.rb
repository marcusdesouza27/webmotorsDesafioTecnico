class HomePage < SitePrism::Page
    element :header, 'header[class="Header"]'
    element :logoHome, 'img[class="link-home__logo-webmotors"]'
    element :headerComprar, :xpath, '//li[contains(.,"Comprar")]'
    element :headerVender, :xpath, '//li[contains(.,"Vender")]'
    element :headerServiços, :xpath, '//li[contains(.,"Serviços")]'
    element :headerAjuda, :xpath, '//li[contains(.,"Ajuda")]'
    element :headerEntrar, :xpath, '//li[contains(.,"Entrar")]'
    element :headerFavIcon, 'a[title="Favoritos"]'
    element :headerFaleConosco, 'a[class="Header-Chat__icon"]'
    element :headerNotifications, 'div[class="Header-Notifications__icon"]'
    element :menuComprarCarros, :xpath, '//h1[contains(.,"Comprar Carros")]'
    element :menuComprarMotos, :xpath, '//h2[contains(.,"Comprar Motos")]'
    element :menuQueroVender, :xpath, '//a[contains(.,"Quero Vender")]'
    element :coockieBarOk, 'button[class="sc-htoDjs gtMZoW"]'
    element :searcBarInput, '#searchBar'
    element :searchButton, 'a[class*="Button--red-home"]'
    element :filterOption, 'div[class="SearchBar__results__result__name"]'

    def coockieBarclick
        wait_until_coockieBarOk_visible
        coockieBarOk.click;        
    end

    def searchCarByModelo(marca, modelo)
        searcBarInput.send_keys(marca)
        searcBarInput.send_keys(" ")
        searcBarInput.send_keys(modelo)
    end

    def searchFilterOption
        wait_until_filterOption_visible
        filterOption.click
    end
    
    def searchSubmit
        searchButton.click;
    end
end