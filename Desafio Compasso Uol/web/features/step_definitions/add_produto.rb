Então('aumento a quantidade desse item no carrinho') do

    #checkpoint para garantir que estamos no carrinho
    expect(@livelo_page.produto_adicionado).to have_text "Seu carrinho"

    @produto_qnt = @livelo_page.quantidade
    @livelo_page.aumentar_quantidade
    
end

Então('vejo se a quantidade do produto foi alterada com sucesso e o alerta {string} é exibido') do |alerta|
    expect(@livelo_page.mensagem).to have_text alerta
    expect(@livelo_page.quantidade).to eql (@produto_qnt.to_i + 1).to_s
end

Então('desejo continuar comprando') do                                       
    @livelo_page.continuar_comprando
end                                                                          

Então('vejo se os produtos são exibidos corretamente no carrinho e o alerta {string} é exibido') do |alerta|
    expect(@livelo_page.mensagem).to have_text alerta
    expect(@livelo_page.produtos_diferentes).to be true
  end
