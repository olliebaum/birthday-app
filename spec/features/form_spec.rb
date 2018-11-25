feature "it wishes user Happy Birthday" do
  scenario "enter name and today's date, it displays birthday message" do
    visit '/'
    today = Date.today
    fill_in 'name', with: 'Scooby Doo'
    fill_in 'day', with: today.day
    select today.strftime("%B"), from: 'month'
    click_on 'Submit'
    expect(page).to have_content 'Happy Birthday Scooby Doo!'
  end
  scenario "enter name and tomorrow's date, it displays correct message" do
    visit '/'
    tomorrow = Date.today + 1
    fill_in 'name', with: 'Scooby Doo'
    fill_in 'day', with: tomorrow.day
    select tomorrow.strftime("%B"), from: 'month'
    click_on 'Submit'
    expect(page).to have_content "Hey Scooby Doo!It's your birthday in 1 day"
  end
  scenario "enter no name, it calls you stranger" do
    visit '/'
    tomorrow = Date.today + 1
    fill_in 'day', with: tomorrow.day
    select tomorrow.strftime("%B"), from: 'month'
    click_on 'Submit'
    expect(page).to have_content "Hey stranger!"
  end
end
