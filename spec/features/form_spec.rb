feature "it wishes user Happy Birthday" do
  scenario "enter name and today's date, it displays birthday message" do
    visit '/'
    enter_name_and_birthday('Scooby Doo', Date.today)
    expect(page).to have_content 'Happy Birthday Scooby Doo!'
  end
  scenario "enter name and tomorrow's date, it displays correct message" do
    visit '/'
    enter_name_and_birthday('Scooby Doo', Date.today + 1)
    expect(page).to have_content "Hey Scooby Doo!It's your birthday in 1 day"
  end
  scenario "enter no name, it calls you stranger" do
    visit '/'
    enter_name_and_birthday('', Date.today + 1)
    expect(page).to have_content "Hey stranger!"
  end
end
