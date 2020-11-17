require 'rails_helper'

RSpec.describe Product, type: :model do

     context "when initialized with all the required parameters" do
        it "raises" do
          cat4 = Category.create! name:'test category'
          product = Product.new({
            name: 'This is my name',
            quantity: 10,
            price: 64.99,
            category: cat4
          })
          expect(product).to be_valid
      end
    end
     context "when initialized without name" do
        it "raises" do
          cat4 = Category.create! name:'test category'
          product = Product.new({
            quantity: 10,
            price: 64.99,
            category: cat4
          })
          expect(product).to_not be_valid
      end
    end
     context "when initialized without quantity" do
        it "raises" do
          cat4 = Category.create! name:'test category'
          product = Product.new({
            name: 'This is my name',
            price: 64.99,
            category: cat4
          })
          expect(product).to_not be_valid
      end
    end
     context "when initialized without price" do
        it "raises" do
          cat4 = Category.create! name:'test category'
          product = Product.new({
            name: 'This is my name',
            quantity: 10,
            category: cat4
          })
          expect(product).to_not be_valid
      end
    end
     context "when initialized without category" do
        it "raises" do
          cat4 = Category.create! name:'test category'
          product = Product.new({
            name: 'This is my name',
            quantity: 10,
            price: 64.99,
          })
          expect(product).to_not be_valid
      end
    end


  end


