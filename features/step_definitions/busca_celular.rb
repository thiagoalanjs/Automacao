Então("digito {string} no campo busca") do |celular|
  fill_in("h_search-input", :with => celular)
end  

Então("clico no botão buscar") do
  find(:id, "h_search-btn").click
  
end

Então("clico na imagem do celular") do
  page.execute_script "window.scrollBy(1,120)"
  find(:xpath, "//*[@id='root']/div/div/div/div[3]/div/div[1]/div/div[2]/div[5]/div/div/div/div[2]/div[1]/section/a/div/h1").click
  
end

Então("clico na rolagem da página") do
	sleep 3
	page.execute_script "window.scrollBy(1,2600)"
end

Então("valido marca{string} do celular") do |marca|
    
	campoMarca = find(:xpath, "//*[@id='content']/main/div[1]/div/div/div/div[3]/section[2]/div/table/tbody/tr[3]/td[2]").text;
	
	if campoMarca.to_s == "#{marca}"
		puts "Marca[OK]";
		else
			puts "Marca divergente(correto é #{campoMarca}) ";
			fail
	end
	sleep 3
	

end

Então("valido S.O{string} do celular") do |sistema_operacional|
    
	sistemaOperacional = find(:xpath, "//*[@id='content']/main/div[1]/div/div/div/div[3]/section[2]/div/table/tbody/tr[11]/td[2]").text;
	
	if sistemaOperacional.to_s == "#{sistema_operacional}"
		puts "S.O[OK]";
		else
			puts "S.O divergente(correto é #{sistemaOperacional}) ";
			fail
	end
	sleep 3
	
end

Então("valido modelo{string} do celular") do |modelo|
    
	modeloCelular = find(:xpath, "//*[@id='content']/main/div[1]/div/div/div/div[3]/section[2]/div/table/tbody/tr[4]/td[2]").text;
	
	if modeloCelular.to_s == "#{modelo}"
		puts "Modelo[OK]";
		else
			puts "Modelo divergente(correto é #{modeloCelular})";
			fail
	end
	sleep 3

end

Então("valido preço{string} do celular") do |preco_cell|

    page.execute_script "window.scrollBy(1,-2600)"
	
	precoCelular = find(:xpath, "//p[@class='sales-price']").text;
	
	if precoCelular[3,11].to_s == "#{preco_cell}"
		puts "Preço[OK]";
		else
			puts "Preço divergente #{precoCelular[3,11]}";
			fail
	end
	sleep 5
end

