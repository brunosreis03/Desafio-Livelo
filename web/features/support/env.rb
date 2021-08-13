require "capybara"
require "capybara/cucumber"


CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}")) #módulo do ruby pra carregar arquivos no formato yml. Recurso do ruby que acessa as variaveis do ambiente

case ENV["BROWSER"] # define o browser para realizacao dos testes multibrowser

when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "fire_headless"
  @driver = :selenium_headless
when "chrome_headless"
  @driver = :selenium_chrome_headless
else
  raise "Navegador incorreto, variável @driver está vazia :(" #aborta o processo mostrando essa mensagem
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG["url"]
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 10
end
