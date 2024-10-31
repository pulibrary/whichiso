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

    it "loads all of the language codes" do
      expect(LanguageCode.count).to eq 0
      LanguageCode.load_languages 
      expect(LanguageCode.count).to eq 7920
    end

    it "loads the language codes so it does not duplicate them when run twice" do
      expect(LanguageCode.count).to eq 0
      LanguageCode.load_languages
      LanguageCode.load_languages
      expect(LanguageCode.count).to eq 7920
    end
  end
end
