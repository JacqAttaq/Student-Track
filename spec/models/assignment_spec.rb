require 'rails_helper'

RSpec.describe Assignment, type: :method do
  subject do
    FactoryGirl.create(:assignment)
  end

  let (:comment) do
    Comment.new({
      content: "Great Job"
      })
  end
  it "should have comments" do
    subject.comments << comment
    expect(subject.comments.length).to eq(1)
  end
  it "should have a name" do
    expect(subject.name).to eq("Project 1")
    expect(subject.name).not_to eq(nil)
  end

  it "should have requirements" do
    expect(subject.requirements).to eq("Build an app")
  end

  it "it should not have requirements" do
    expect(subject.requirements).not_to eq(nil)
    expect(subject.requirements).not_to eq("Breed chinchillas")
  end

end