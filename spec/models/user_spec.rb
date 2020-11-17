require 'rails_helper'


RSpec.describe User, type: :model do

context "when initialized with all required fields" do
  it "is valid" do
      user = User.new({
      password: "password",
      password_confirmation: "password",
      email: 'sebastiankann@gmail.com',
    })
    expect(user).to be_valid
  end
end  

# must be created with password and password_ confirmation field
context "when initialized without a password_confirmation" do
  it "is not valid" do
    user = User.new({
      password: "password",
      email: 'sebastiankann@gmail.com',
    })
    expect(user).to_not be_valid
  end
end

context "when initialized without a password" do
  it "is not valid" do
    user = User.new({
      password_confirmation: "password",
      email: 'sebastiankann@gmail.com',
    })
    expect(user).to_not be_valid
  end
end

# these must match
context "when initialized without a mismatched password and password_confirmation" do
  it "is not valid" do
    user = User.new({
      password: "psswrd",
      password_confirmation: "password",
      email: 'sebastiankann@gmail.com',
      })
      expect(user).to_not be_valid
    end
  end
  
  # must have an email
  context "when initialized without an email" do
    it "is not valid" do
      user = User.new({
        password: "password",
        password_confirmation: "password",
        })
        expect(user).to_not be_valid
      end
    end
    
    

      


  # email must be unique in the database
  context "email matches another in the database" do
    it "is not valid" do
      user1 = User.create!({
      password: "password",
      password_confirmation: "password",
      email: 'sebastiankann@gmail.com',
      })
      user2 = User.new({
      password: "password",
      password_confirmation: "password",
      email: 'sebastiankann@gmail.com',
    })
      expect(user2).to_not be_valid
    end
  end
  


end
