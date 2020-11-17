require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js:true do
 
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
  
  scenario "Clicking on one of the product partials brings the user to a product page" do
    #ACT
    visit root_path
    save_screenshot('homepage_product_test.png')
    expect(page.first('a.btn.btn-default.pull-right')).to have_text 'Details'
    page.first('a.btn.btn-default.pull-right').click
    sleep(1)
    save_screenshot('product_page_product_test.png')
    expect(page).to have_css 'article.product-detail', count: 1

  end
  
end
