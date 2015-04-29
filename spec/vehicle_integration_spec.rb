require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('path for vehicle index page', {:type => :feature}) do
  it('user clicks on a link for vehicle list') do
    visit('/')
    click_link('See Vehicle List')
    expect(page).to have_content('Vehicles')
  end

  it('user clicks on a link for add new vehicle') do
    visit('/')
    click_link('Add New Vehicle')
    expect(page).to have_content('Add a vehicle')
  end
end

describe('path for add a new vehicle page', {:type => :feature}) do
  it("user clicks on submit to add new vehicle") do
    visit('/vehicles/new')
    fill_in('make', with: "Tesla")
    fill_in('model', with: "ModelS")
    fill_in('year', with: "2012")
    click_button('Add vehicle')
    expect(page).to have_content('Success!')
  end
end
