require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a first_name, last_name, email, and password" do
    user = User.new(
      first_name: 'Jhon',
      last_name: 'Doe',
      email: 'doe@example.com',
      password: 'pavillion',
    )
    expect(user).to be_valid
  end
  it 'is invalid without a first name' do
    user = User.new( first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end
  it 'is invalid without a last name' do
    user = User.new( last_name: nil)
    user.valid?
    expect(user.errors[:last_name]).to include("can't be blank")
  end
  it 'is invalid without an email address'
  it 'is invalid with a duplicate email address'
  it "returns a user's full name as a string"
end
