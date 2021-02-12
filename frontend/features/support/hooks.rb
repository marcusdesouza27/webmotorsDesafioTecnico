Before do
    Capybara.page.driver.browser.manage.window.maximize
    visit '/'
    
    @home = HomePage.new
    @busca = BuscaPage.new

    @home.coockieBarclick();
end

After do |scenario|
    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    embed(screenshot, "image/png", "Screenshot")

    closeSession()
end