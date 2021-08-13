Então('decido por remove-lo do carrinho') do
    @livelo_page.remover_produto
end

Então('a mensagem {string} é exibida na tela') do |mensagem|
    expect(@livelo_page.produto_removido).to have_text mensagem
end

Então('verifico se o outro produto permanece no carrinho') do
    expect(@livelo_page.produto_nome).to eql @produto
    expect(@livelo_page.produtos_diferentes).to be false
end