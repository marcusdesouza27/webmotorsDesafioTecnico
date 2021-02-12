@buscas
Feature: Webmotors Busca

    Como usuario quero poder realizar buscas no portal da Webmotors

    Given usuario acessou a página de Webmotors

@buscaModelo
Scenario: Busca por Marca e Modelo
    When usuario pesquisa por uma marca e o modelo
    And submete a pesquisa com os filtros preenchidos
    Then a pesquisa retorna os resultados da busca

@buscaVersao
Scenario: Busca por Versão
    When usuario pesquisa por uma marca e o modelo
    And submete a pesquisa com os filtros preenchidos
    And usuario pesquisa por uma versao especifica de um veículo
    Then a pesquisa retorna os veiculos encontrados de acordo com a versão informada