class Record < ApplicationRecord
  def field546
    marcrecord = MARC::XMLReader.new(marcxml)
    byebug
  end
end
