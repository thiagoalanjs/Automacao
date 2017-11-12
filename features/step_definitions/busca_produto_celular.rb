Dado(/^que estou no site$/) do
	visit("https://www.americanas.com.br/")
	sleep 5
	assert_text("venda na americanas")
end

Dado(/^digito "([^"]*)" no campo busca$/) do |produto|
   fill_in("h_search-input", :with=>produto)
   sleep 2
end

Quando(/^clico no botao buscar$/) do
  find(:xpath, "//*[@id='h_search']/form/div/button").click
end

Quando(/^clico no item$/) do
  page.execute_script "window.scrollBy(1,500)"	
  find(:xpath, "//*[@id='root']/div/div/div/div[3]/div/div[1]/div/div[2]/div[5]/div/div/div/div[2]/div[1]/section/a/div[2]/h1").click
  sleep 5
end

Quando(/^valido mensagem na tela do item$/) do
  page.execute_script "window.scrollBy(1,1600)"	   
  sleep 2
  assert_text("informações do produto")
  sleep 5
end

Então(/^clico no botão comprar$/) do
  page.execute_script "window.scrollBy(1,-1600)"
  find(:xpath, "//*[@id='btn-buy']").click
  sleep 5
  end
 

Então(/^clico em continuar$/) do
  find(:xpath, "//*[@id='content']/div/main/div[2]/div/div/div[2]/section/div[3]/div[1]").click
  sleep 5
end