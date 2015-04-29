require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('path for vehicle index page', {:type => :feature}) do
  it('user clicks on a link for either vehicle list or add new vehicle') do
  visit('/')
  click_link('See Vehicle List')
  expect(page).to have_content('Vehicles')
  end
end
