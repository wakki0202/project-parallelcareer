class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :phonenumber
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
