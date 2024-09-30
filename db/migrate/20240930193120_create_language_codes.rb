class CreateLanguageCodes < ActiveRecord::Migration[7.1]
  def change
    create_table :language_codes do |t|
      t.string :code
      t.string :language_name

      t.timestamps
    end
  end
end
