class RemoveReferencesFromProviders < ActiveRecord::Migration[6.1]
  def change


    # カラムも一緒に削除する場合はこちら
    remove_reference :provider_files, :provider, foreign_key: true
  end
end
