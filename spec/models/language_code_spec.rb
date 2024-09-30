require 'rails_helper'

RSpec.describe LanguageCode, type: :model do
  let(:language_code) {LanguageCode.new(code: "por", language_name: "Portuguese")}

  it "can instantiate" do
    expect(language_code).to be_instance_of(LanguageCode)
  end

  it "returns a code" do
    expect(language_code.language_name).to eq "Portuguese"
    expect(language_code.code).to eq "por"
  end
end
