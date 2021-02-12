class BuscaPage < SitePrism::Page
    element :hondaCityBtn, 'a[id="honda-city"]'
    element :menuVersoes, 'div[class="Filters__line Filters__line--icon Filters__line--icon Filters__line--icon--right Filters__line--gray"]'
    element :inputVersao, '.Slide.SlideLeft.SlideLeft--opened > div > div:nth-child(3) > div > input'
    element :versaoResultado, :xpath, '//div[@class="Filters__container__group Filters__container__group--no-border"]//a'
    element :checkboxConcessionaria, 'input[name="Concessionária"]'
    element :checkboxLoja, 'input[name="Loja"]'

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
        filterOption.click
    end
    
    def searchSubmit
        searchButton.click;
    end

    def BuscaVersao
        wait_until_menuVersoes_visible
        menuVersoes.click;
        wait_until_inputVersao_visible
        inputVersao.send_keys('1.5 LX 16V FLEX 4P AUTOMÁTICO')
        wait_until_versaoResultado_visible
        versaoResultado.click;
    end
end