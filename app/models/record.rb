class Record < ApplicationRecord
  def field546
    marcrecord = MARC::XMLReader.new(StringIO.new(marcxml)).first 
    tag_546 = marcrecord.fields.select{|field| field.tag=="546"}.first
    tag_546a = tag_546.subfields.select{|subfield| subfield.code=="a"}.first
    tag_546a.value 
  end
end
