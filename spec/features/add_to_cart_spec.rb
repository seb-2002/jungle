require 'rails_helper'

RSpec.feature "Vistor navigates to the home page", type: :feature, js:true do
    # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
         image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  #act
  scenario "For each product they add to the cart, the cart counter increases" do
  visit root_path
  expect(page).to have_content 'My Cart (0)'
  save_screenshot('homepage_cart_test.png')
  expect(page).to have_text 'Add'
  page.first('button', text: 'Add').click
  expect(page).to have_content 'My Cart (1)'
  save_screenshot('homepage_cart_test_2.png')
  
end
end
