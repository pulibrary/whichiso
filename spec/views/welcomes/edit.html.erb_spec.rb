require 'rails_helper'

RSpec.describe "welcomes/edit", type: :view do
  let(:welcome) {
    Welcome.create!()
  }

  before(:each) do
    assign(:welcome, welcome)
  end

  it "renders the edit welcome form" do
    render

    assert_select "form[action=?][method=?]", welcome_path(welcome), "post" do
    end
  end
end
