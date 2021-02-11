require 'httparty'

    Dado('que eu acesse a página de consulta com o cep 01001000') do
        $response = HTTParty.get('http://viacep.com.br/ws/01001000/json')
        #$variavel 
    end
  
    Quando('a resposta da pagina for {int}') do |int|
        expect($response.code).to eq(int)
    end
  
    Então('devo printar codigo do IBGE no stdout') do
        print "Código do IBGE: #{$response["ibge"]}\n"
    end

    Dado('que eu acesse a página de consulta com o cep 950100100') do
        $response = HTTParty.get('http://viacep.com.br/ws/950100100/json')
    end
  
    Então('devo printar a mensagem "CEP INVALIDO" no stdout') do
        print "CEP INVALIDO\n"
    end
    

