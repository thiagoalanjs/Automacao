#language: pt
#utf-8

Funcionalidade: Busca item
	Como cliente
	Quero acessar a pagina da loja virtual americanas
	Para comprar um item

	Esquema do Cenário: Busca Celular
		Dado que estou no site 
		Quando digito <produto> no campo busca
		E clico no botao buscar 
		E clico no item 
		E valido mensagem na tela do item
		E clico no botão comprar
		Então clico em continuar


Exemplos:
	|produto|  
	|"iPhone 6"|    
	|"Samsung Galaxy S8"|            

