# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a name and email" do
    user = User.new(name: "John Doe", email: "john@example.com")
    expect(user).to be_valid
  end

  it "is invalid without a name" do
    user = User.new(email: "john@example.com")
    expect(user).to_not be_valid
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "is invalid without an email" do
    user = User.new(name: "John Doe")
    expect(user).to_not be_valid
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid with a duplicate email" do
    User.create(name: "John Doe", email: "john@example.com")
    user = User.new(name: "Jane Doe", email: "john@example.com")
    expect(user).to_not be_valid
    expect(user.errors[:email]).to include("has already been taken")
  end

  it "has one ticket association" do
    expect(User.reflect_on_association(:ticket).macro).to eq(:has_one)
  end

  it "downcases email before saving" do
    user = User.new(name: "John Doe", email: "John@Example.com")
    user.save
    expect(user.email).to eq("john@example.com")
  end
end
