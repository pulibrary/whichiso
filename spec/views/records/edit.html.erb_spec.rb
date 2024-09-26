require 'rails_helper'

RSpec.describe "records/edit", type: :view do
  let(:record) {
    Record.create!(
      marcxml: "MyString"
    )
  }

  before(:each) do
    assign(:record, record)
  end

  it "renders the edit record form" do
    render

    assert_select "form[action=?][method=?]", record_path(record), "post" do

      assert_select "input[name=?]", "record[marcxml]"
    end
  end
end
