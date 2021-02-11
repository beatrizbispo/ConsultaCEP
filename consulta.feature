#language:pt

Funcionalidade: Consulta CEP

    Para que eu possa obter os dados de endereço 
    Sendo um usuário que deseja consultar por CEP
    Posso acessar o link de CEP fornecido

    Cenario: Consulta CEP valida
	    Dado que eu acesse a página de consulta com o cep 01001000
	    Quando a resposta da pagina for 200
	    Então devo printar codigo do IBGE no stdout

	Cenario: Consulta CEP inválido
	    Dado que eu acesse a página de consulta com o cep 950100100
	    Quando a resposta da pagina for 400
	    Então devo printar a mensagem "CEP INVALIDO" no stdout