require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        marcxml: "Marcxml"
      ),
      Record.create!(
        marcxml: "Marcxml"
      )
    ])
  end

  it "renders a list of records" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Marcxml".to_s), count: 2
  end
end
