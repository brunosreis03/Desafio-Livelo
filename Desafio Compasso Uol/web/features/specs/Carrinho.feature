# language: pt

Funcionalidade: Adicionar ao carrinho
  Como um usuário do livelo
  Gostaria de poder comprar um produto
  Para utilizar meus pontos


  Cenario: Adicionar produto ao carrinho com sucesso

    Dado que esteja na home page do site livelo
    Quando seleciono uma categoria a qual me interessa
      E adiciono um "<produto>" ao carrinho
    Então vejo se o produto foi adicionado ao carrinho com sucesso

      Exemplos:
      | produto                                                                                        |
      | Caixa de Som Amplificada TRC 512 com Bluetooth, Rádio FM, Entrada USB e Controle Remoto – 150W |
      | Fone de Ouvido JBL C50HI Intra-Auricular - Preto                                               |
      | Headphone Bluetooth T500BT JBL - Preto                                                         |


  Cenario: Adicionar produto ao carrinho e aumentar a quantidade do mesmo

    Dado que esteja na home page do site livelo
    Quando seleciono uma categoria a qual me interessa
      E adiciono um "Caixa de Som Amplificada TRC 512 com Bluetooth, Rádio FM, Entrada USB e Controle Remoto – 150W" ao carrinho
      E aumento a quantidade desse item no carrinho
    Então vejo se a quantidade do produto foi alterada com sucesso e o alerta "A entrega pode ser realizada em dias diferentes de acordo com a disponibilidade de entrega." é exibido


  Cenario: Adicionar produto ao carrinho, aumentar a quantidade do mesmo erroneamente e reduzi-la

    Dado que esteja na home page do site livelo
    Quando seleciono uma categoria a qual me interessa
      E adiciono um "Headphone Bluetooth T500BT JBL - Preto" ao carrinho
      E aumento a quantidade desse item no carrinho
      Mas percebo que foi um erro e reduzo a quantidade do item
    Então verifico se a quantidade do produto retornou ao valor inicial e se o alerta "A entrega pode ser realizada em dias diferentes de acordo com a disponibilidade de entrega." permanece sendo exibido


  Cenario: Adicionar produto ao carrinho e remove-lo após isso

    Dado que esteja na home page do site livelo
    Quando seleciono uma categoria a qual me interessa
      E adiciono um "Fone de Ouvido JBL C50HI Intra-Auricular - Preto" ao carrinho
    Então vejo se o produto foi adicionado ao carrinho com sucesso
      Mas decido por remove-lo do carrinho
    Então a mensagem "Ainda não existem itens no seu carrinho" é exibida na tela

  @temp
  Cenario: Adicionar produtos diferentes ao carrinho

    Dado que esteja na home page do site livelo
    Quando seleciono uma categoria a qual me interessa
      E adiciono um "Caixa de Som Amplificada TRC 512 com Bluetooth, Rádio FM, Entrada USB e Controle Remoto – 150W" ao carrinho
    Então vejo se o produto foi adicionado ao carrinho com sucesso
      Mas desejo continuar comprando
    Quando seleciono uma categoria a qual me interessa
      E adiciono um "Headphone Bluetooth T500BT JBL - Preto" ao carrinho
    Então vejo se os produtos são exibidos corretamente no carrinho e o alerta "A entrega pode ser realizada em dias diferentes de acordo com a disponibilidade de entrega." é exibido


  Cenario: Adicionar produtos ao carrinho e remover 1 dos produtos

    Dado que esteja na home page do site livelo
    Quando seleciono uma categoria a qual me interessa
      E adiciono um "Fone de Ouvido JBL C50HI Intra-Auricular - Preto" ao carrinho
    Então vejo se o produto foi adicionado ao carrinho com sucesso
      Mas desejo continuar comprando
    Quando seleciono uma categoria a qual me interessa
      E adiciono um "Headphone Bluetooth T500BT JBL - Preto" ao carrinho
    Então vejo se os produtos são exibidos corretamente no carrinho e o alerta "A entrega pode ser realizada em dias diferentes de acordo com a disponibilidade de entrega." é exibido
      Mas decido por remove-lo do carrinho
    Então verifico se o outro produto permanece no carrinho







