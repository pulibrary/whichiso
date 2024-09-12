require 'rails_helper'

RSpec.describe "welcomes/index", type: :view do
  before(:each) do
    assign(:welcomes, [
      Welcome.create!(),
      Welcome.create!()
    ])
  end

  it "renders a list of welcomes" do
    render
    cell_selector = 'div>p'
  end
end
