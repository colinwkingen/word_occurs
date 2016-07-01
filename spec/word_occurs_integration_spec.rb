
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the controls for word occurs',  {:type => :feature}) do
  it('fills in a word and searches for an occurance of it') do
    visit('/')
    fill_in('sentence', :with => 'potato')
    fill_in('target_word', :with => 'potato')
    click_button('Submit')
    expect(page).to have_content('1')
  end
  it('fills in a text field and searches for a word not present in it') do
    visit('/')
    fill_in('sentence', :with => 'potato')
    fill_in('target_word', :with => 'yam')
    click_button('Submit')
    expect(page).to have_content('0')
  end
  it('fills in a text field and search sentences for multiple occurances of a word in it') do
    visit('/')
    fill_in('sentence', :with => 'potato do I potato as the potato becomes potato')
    fill_in('target_word', :with => 'potato')
    click_button('Submit')
    expect(page).to have_content('4')
  end
  it('return a formatted version of the input string before returning the original and occurance number') do
    visit('/')
    fill_in('sentence', :with => 'Potato do I Potato!! as !the potato becomes## potato')
    fill_in('target_word', :with => 'potato')
    click_button('Submit')
    expect(page).to have_content('potato do i potato as the potato becomes potato')
  end
end
