Dado('que esteja na home page do site livelo') do
  @livelo_page.open
end

Quando('seleciono uma categoria a qual me interessa') do
  @livelo_page.categoria
end

Quando('adiciono um {string} ao carrinho') do |equipamento|
  @produto = equipamento
  
  @livelo_page.choose_produto(@produto)
  @livelo_page.carrinho_add
end

Então('vejo se o produto foi adicionado ao carrinho com sucesso') do
  expect(@livelo_page.produto_adicionado).to have_text "Seu carrinho"
  expect(@livelo_page.produto_nome).to have_text @produto  
end


