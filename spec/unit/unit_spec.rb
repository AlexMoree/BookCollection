# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J K Rowling', price: 14.99, published: '2020-09-28')
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a published date' do
    subject.published = nil
    expect(subject).not_to be_valid
  end
end