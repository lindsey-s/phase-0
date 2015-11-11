#Solution Below




# RSpec Tests. They are included in this file because the local variables you are creating are not accessible across files. If we try to run these files as a separate file per normal operation, the local variable checks will return nil.

first_name = 'Lindsey'
last_name = 'Stevenson'
age = 29

describe 'first_name' do
  it "is defined as a local variable" do
    expect(defined?(first_name)).to eq 'local-variable'
  end

  it "is a String" do
    expect(first_name).to be_a String
  end
end

describe 'last_name' do
  it "is defined as a local variable" do
    expect(defined?(last_name)).to eq 'local-variable'
  end

  it "be a String" do
    expect(last_name).to be_a String
  end
end

describe 'age' do
  it "is defined as a local variable" do
    expect(defined?(age)).to eq 'local-variable'
  end

  it "is an integer" do
    expect(age).to be_a Fixnum
  end
end

=begin

REFLECTION

How do you define a local variable?

How do you define a method?

What is the difference between a local variable and a method?

How do you run a ruby program from the command line?

How do you run an RSpec file from the command line?

What was confusing about this material? What made sense?


=end