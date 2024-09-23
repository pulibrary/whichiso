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
  it "has a marcxml field" do
    byebug
    546_field = MARC::XMLReader.new(StringIO.new(record.marcxml))
    expect(record.marcxml)
  end
end
