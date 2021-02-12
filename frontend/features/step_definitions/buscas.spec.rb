When('usuario pesquisa por uma marca e o modelo') do
    @home.searchCarByModelo(DATA['marca'], DATA['modelo']);    
  end

  When("submete a pesquisa com os filtros preenchidos") do
    @home.searchFilterOption();
  end
  
  Then('a pesquisa retorna os resultados da busca') do
    expect(page).to have_content(MESSAGE_ASSERT['msgCarros'])
  end
  
  When('usuario pesquisa por uma versao especifica de um veículo') do
    @busca.BuscaVersao(DATA['versao']);
  end

  Then('a pesquisa retorna os veiculos encontrados de acordo com a versão informada') do
    expect(page).to have_content(MESSAGE_ASSERT['msgCarrosVersao'])
  end