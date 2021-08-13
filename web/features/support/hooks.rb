Before do
  @livelo_page = LiveloPage.new
end

After do
  screenshot = "logs/screenshots/#{@produto}" + "#{Time.now.to_i.to_s}.png"
  page.save_screenshot(screenshot)
  attach(screenshot, 'image/png')
end

