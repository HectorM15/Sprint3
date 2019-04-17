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
