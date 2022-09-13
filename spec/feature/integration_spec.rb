# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end
RSpec.describe 'Adding a Author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'J K Rowling'
    click_on 'Add Author'
    visit books_path
    expect(page).to have_content('J K Rowling')
  end
end
RSpec.describe 'Adding a Price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: '14.99'
    click_on 'Add Price'
    visit books_path
    expect(page).to have_content('14.99')
  end
end
RSpec.describe 'Adding a Date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Published', with: '04/02/1998'
    click_on 'Add Published'
    visit books_path
    expect(page).to have_content('04/02/1998')
  end
end