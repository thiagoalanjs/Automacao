#language: pt
#utf-8

Funcionalidade: Busca item
	Como cliente
	Quero acessar a pagina da loja virtual americanas
	Para comprar um item

Fundo:
    Dado que estou no site 
	Quando validar frase de black friday
	E validar frase de produtos patrocinados
	Então clico no campo busca do site
	
	@celular	
	Esquema do Cenário: Busca Celular
	
	E digito <celular> no campo busca
	E clico no botão buscar
	E clico na imagem do celular
	E clico na rolagem da página
	Então valido marca<marca> do celular
	Então valido S.O<sistema_operacional> do celular
	Então valido modelo<modelo> do celular
	Então valido preço<preco_cell> do celular
	
	Exemplos:
	
	|celular            |marca    |sistema_operacional| modelo      |preco_cell     |  
	|"iPhone 6"         |"Apple"  |"iOS"              |"iPhone 6s"  |"2.499,99"     |   
	|"Samsung Galaxy S8"|"Samsung"|"Android"          |"Galaxy S8"  |"3.399,00"     |    

	@livro
	Esquema do Cenário: Busca Livro	
	
	E digito <livro> no campo busca
	E clico no botão buscar
	E clico na imagem do livro
	Então valido <ISBN> do livro
	Então valido <editora> do livro
	Então valido <idioma> do livro
	Então valido <preco_livro> do livro
	
	Exemplos:
	|livro       |ISBN           |editora               |idioma     |preco_livro|	
	|"Livro php" |"9788575224656"|"Novatec"             |"Português"|64.90      | 
	|"Livro java"|"9788582603369"|"Grupo a Educacao S A"|"Português"|85.50      |