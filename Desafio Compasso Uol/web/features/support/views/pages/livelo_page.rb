class LiveloPage
    include Capybara::DSL

    def open
        visit "/"
    end

    def categoria
        find(".title-p", text: "Tecnologia").click
        find(".segments__item", text: "Eletrônicos").click
    end

    def choose_produto(equipamento)
        find(".card-name", text: equipamento).click
    end

    def produto_adicionado
        carrinho = find(".cart-list__header")
        return carrinho.find(".h2").text
    end

    def carrinho_add
        if page.has_css?(".filter-box-catalog__filters")  #se o produto tiver personalização de cor ou voltagem

            find("select[id$=other_v_voltage]").find(:option, "NA").select_option if page.has_css?("select[id$=other_v_voltage]")
            find("select[id$=other_v_color]").find(:option, "NA").select_option if page.has_css?("select[id$=other_v_color]")
            find("span[id$=addToCart]").click

        elsif   #se o produto não tiver personalização disponível
            
            find("span[id$=addToCart]").click
        end
    end

    # def carrinho_add      # testaria a plataforma visando continuar selecionando opções de personalização aleatórias dentre as disponíveis até o produto estar disponível em estoque

    #     if page.has_css?(".filter-box-catalog__filters")
    #         # loop do 
    #             # find("select[id$=other_v_voltage]").all('option').sample.select_option if page.has_css?("select[id$=other_v_voltage]")
    #             # find("select[id$=other_v_color]").all('option').sample.select_option if page.has_css?("select[id$=other_v_color]")
    #             # if page.has_css?(".button__primary:not([disabled])")
    #             #     break
    #             # end
    #         # end
    #         find("span[id$=addToCart]").click
    #     elsif 
    #         find("span[id$=addToCart]").click
    #     end
    # end

    def produto_nome
        return find(".cart-list__subtitle").text
    end

    def quantidade
        return find(".cart-list__value-qnt").text
    end

    def aumentar_quantidade
        find(".icon-plus").click
    end

    def mensagem
        return find(".cart-list__delivery-disclaimer").text
    end

    def no_message(alerta)
        page.has_no_text?(alerta)
    end

    def reduzir_quantidade
        find(".icon-minus").click
    end

    def remover_produto
        produto = find("div[id$=cart-item-0]")
        produto.click_on "Remover"
    end
    
    def produto_removido
        carrinho = find(".cart-empty")
        return carrinho.find(".h3").text
    end

    def continuar_comprando
        click_on "Continuar Comprando"
    end

    def produtos_diferentes
        return page.has_css?(".cart-list__item", count: 2)
    end
end