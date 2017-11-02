require 'rails_helper'

RSpec.describe Doc, type: :model do
  it "is invalid without a title" do
    doc = Doc.new(title: nil)
    doc.valid?
    expect(doc.errors[:title]).to include("can't be blank")

  end
end
