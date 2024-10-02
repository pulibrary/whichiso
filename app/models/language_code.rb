class LanguageCode < ApplicationRecord

  def self.config_file
    Rails.root.join("config","language_codes","iso-639-3.tab").to_s
  end
end
