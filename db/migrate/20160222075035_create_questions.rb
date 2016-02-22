class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :questions, :user_id
  end
end
