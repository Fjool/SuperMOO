Given(/^I am at the main page$/) do
  visit '/'
end

Given(/^I have initialised the world$/) do
  @world = World.new
end

Then(/^I should see a welcome message$/) do
  assert_text 'Welcome to SuperMOO'
end

Then(/^I should see the world output$/) do
  expect(page).to have_css('div.world')
end

Given(/^I have a player called "(.*)"$/) do |player_name|
  @world.add_actor(Actor.new(player_name))
end

Then(/^I should see the message "(.*)"$/) do |message|
  expect(page).to have_text("#{message}")
end
