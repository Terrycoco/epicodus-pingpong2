require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('pingpong path', {:type => :feature}) do
    it('Takes in a number as an input and return pings and pongs') do
        visit('/')
        fill_in('inputnumber', :with=>3.to_i)
        click_button('Send')
        expect(page).to have_content([1,2,'Ping'])

    end
end
