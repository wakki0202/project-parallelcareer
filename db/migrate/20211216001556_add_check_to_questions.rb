class AddCheckToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :check, :string
  end
end
