class ChangeColumnToWork < ActiveRecord::Migration[6.1]
  def change
    remove_reference :admins, :work
  end
end
