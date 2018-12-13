require 'rails_helper'

RSpec.describe Author, :type => :model do
  it "tests creating new valid author" do
    author = Author.new(email: 'dshaido@gmail.com', password: 'asd234')
    expect(author).to be_valid
  end

  it "tests creating new not valid author" do
    author = Author.new(name: 'John Doe', password: 'asd234')
    expect(author).to_not be_valid
  end

  it "tests display_name method for named author" do
    author = Author.new(email: 'dshaido@gmail.com', password: 'asd234', name: 'John Doe')
    expect(author.display_name == "John Doe").to be true
  end

  it "tests display_name method for unnamed author" do
    author = Author.new(email: 'dshaido@gmail.com', password: 'asd234')
    expect(author.display_name == "Author").to be true
  end

end
