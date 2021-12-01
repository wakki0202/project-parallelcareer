class RemoveProgressFromIntroductions < ActiveRecord::Migration[6.1]
  def change
    remove_reference :introductions, :progress, null: false, foreign_key: true
  end
end
