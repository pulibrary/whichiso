class CreateLanguageLookups < ActiveRecord::Migration[7.1]
  def change
    create_table :language_lookups do |t|

      t.timestamps
    end
  end
end
