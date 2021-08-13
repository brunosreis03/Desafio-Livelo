Quando('percebo que foi um erro e reduzo a quantidade do item') do
  @livelo_page.reduzir_quantidade
end

Então('verifico se a quantidade do produto retornou ao valor inicial e se o alerta {string} permanece sendo exibido') do |alerta|
  expect(@livelo_page.no_message(alerta)).to be true
  expect(@livelo_page.quantidade).to eql @produto_qnt
end
