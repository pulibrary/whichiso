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

  context 'when loading all of the language codes' do
    it "knows where the language codes are" do
      expect(LanguageCode.config_file).to eq Rails.root.join("config","language_codes","iso-639-3.tab").to_s
    end
  end
end
