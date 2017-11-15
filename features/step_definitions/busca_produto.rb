Dado(/^que estou no site$/) do
	visit("https://www.americanas.com.br/")
	sleep 5
	assert_text("venda na americanas")
	
	page.save_screenshot 'Evidencia/acessar_site.png'
end

Quando("validar frase de black friday") do                                    
  assert_text("ofertas com preço de black friday") 
  page.execute_script "window.scrollBy(1,350)"
  sleep 3
  page.save_screenshot 'Evidencia/oferta_black_friday.png'
  	
end                                 

Quando("validar frase de produtos patrocinados") do
  assert_text("produtos patrocinados") 
  page.execute_script "window.scrollBy(1,3615)"
  page.save_screenshot 'Evidencia/patrocinados.png'
  sleep 3	
end                                                                         

Então("clico no campo busca do site") do
	find(:id, "h_search-input").click
	page.save_screenshot 'Evidencia/click_campo_busca.png'
	sleep 3
end