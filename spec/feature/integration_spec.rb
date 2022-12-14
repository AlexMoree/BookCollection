require 'rails_helper'
def select_date()
    #select '2022' :from => 'book_published_1i'
    #select '8' :from => 'book_published_2i'
    #select '18' :from => 'book_published_3i'
end
# Example
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 14.99
    #select_date()
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('JK Rowling')
    expect(page).to have_content(14.99)
    #expect(page).to have_content('2022-08-18')
  end
end