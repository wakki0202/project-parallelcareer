class CreateProviderFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :provider_files do |t|
      t.string :file
      t.references :provider, null: false, foreign_key: true

      t.timestamps
    end
  end
end
