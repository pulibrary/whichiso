require 'csv'

class LanguageCode < ApplicationRecord

  def self.config_file
    Rails.root.join("config","language_codes","iso-639-3.tab").to_s
  end

  def self.load_languages
    CSV.foreach(config_file, headers: true, col_sep: "\t") do |row|
      LanguageCode.new(code: row["Id"], language_name: row["Ref_Name"]).save
    end 
  end
end
