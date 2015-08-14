require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('shows the homepage where words are inputed and listed', {:type => :feature}) do
  it('allows user to input words and see a list of inputed words') do
    visit('/')
    fill_in('new_word', :with => "mountain")
    click_button('Submit')
    expect(page).to have_content("mountain")
  end
end
