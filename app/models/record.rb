class Record < ApplicationRecord

  # This method extracts the 546a data. For example, this might read 
  # "In Persian and English. Egyptian Arabic notes and Jurchen definitions."
  # @return [String]
  def field546
    marcrecord = MARC::XMLReader.new(StringIO.new(marcxml)).first 
    tag_546 = marcrecord.fields.select{|field| field.tag=="546"}.first
    tag_546a = tag_546.subfields.select{|subfield| subfield.code=="a"}.first
    tag_546a.value 
  end

  # This method extracts the language names of the 546a data. For example, this may return
  # an array of the languages ["Persian", "English", "Egyptian Arabic", "Jurchen"]
  # @return [Array]
  def language_names
    byebug
  end
end
