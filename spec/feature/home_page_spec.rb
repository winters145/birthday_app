# require 'capybara/rspec'
# require_relative '../../app'

# Capybara.app = BirthdayApp

require 'date'

feature "home page" do
  scenario "should have a home page with required fields" do
    visit("/")
    expect(page).to have_content "Hello there!"
    expect(page).to have_content "What's your name?"
    expect(page).to have_content "When's your birthday?"
    expect(page).to have_content "day:"
    expect(page).to have_content "month:"
  end

  scenario "should return a page that shows happy birthday if the entered birthday is today" do
    visit("/")
    fill_in :name, with: 'Test-dummy'
    fill_in :day, with: Date.today.to_s[-2,2]
    fill_in :month, with: Date.today.to_s[5,2]
    click_button("Go!")
    expect(page).to have_content "Happy Birthday, Test-dummy!"
  end
  
  scenario "should return a page that shows a countdown to the given birthday, if not today" do
    birthday_day = Date.today+10
    visit("/")
    fill_in :name, with: 'Test-dummy'
    fill_in :day, with: birthday_day.to_s[-2,2]
    fill_in :month, with: Date.today.to_s[5,2]
    click_button("Go!")
    expect(page).to have_content "Your birthday will be in 10 days, Test-dummy."
  end
end