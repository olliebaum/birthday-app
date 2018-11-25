def enter_name_and_birthday(name, birthday)
  fill_in 'day', with: birthday.day
  select birthday.strftime("%B"), from: 'month'
  fill_in 'name', with: name
  click_on 'Submit'
end
