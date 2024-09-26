require 'rails_helper'

RSpec.describe "records/show", type: :view do
  before(:each) do
    assign(:record, Record.create!(
      marcxml: "Marcxml"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Marcxml/)
  end
end
