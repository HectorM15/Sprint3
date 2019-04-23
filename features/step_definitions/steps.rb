Given(/^Pagina yt$/) do
  visit ('http://www.youtube.com')
end

When(/^Busco por : "(.*?)"$/) do |search_term|
  fill_in 'search_query', :with => search_term
  click_on 'search-icon-legacy'
end

Then(/^devuelvo videos$/) do
  puts page.inspect
  page.should have_content 'Universidad Rey Juan Carlos'
end

Then("devuelvo videos master") do
  puts page.inspect
  page.should have_content 'MASTER'
end


Given("Estoy en la pagina de renfe") do
  visit ('http://www.renfe.com/')
end

When("Busco {string} el dia 29") do |string|
  fill_in 'IdOrigen', with: 'MADRID-CHAMARTIN'
  fill_in 'IdDestino', with: 'BARCELONA-SANTS'
  fill_in '__fechaIdaVisual', with: '29/05/2019'
  fill_in '__fechaVueltaVisual', with: '30/05/2019'
  click_button 'Comprar'
end

Then("devuelvo trenes") do
  puts page.inspect
  page.should have_content 'A'
end

Given(/^I am on the home page$/) do
  puts  visit "https://www.youtube.com/watch?v=NoxF1VpdK9I"
end

When /^I press space$/ do
  click_button 'Botón de reproducción (k)'
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text


end
