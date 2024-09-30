require 'rails_helper'
require 'marc'
require 'byebug'

RSpec.describe Record, type: :model do
  let(:marcfile) { "#{Dir.getwd}/spec/fixtures/99125407250606421.marcxml" }
  let(:reader) { MARC::XMLReader.new(marcfile) }
  let(:marcxml) { reader.first.to_xml }
  let(:record) { Record.new(marcxml: marcxml) }
  
  it "can be instantiated" do
    expect(record).to be_instance_of(Record)
  end
 
  it "can extract a 546 field" do
    expect(record.field546).to eq "In Persian and English. Egyptian Arabic notes and Jurchen definitions."
  end

  xit "can extract the language names from 546a" do
    expect(record.language_names).to contain_exactly("Persian", "English", "Egyptian Arabic", "Jurchen")
  end
end
