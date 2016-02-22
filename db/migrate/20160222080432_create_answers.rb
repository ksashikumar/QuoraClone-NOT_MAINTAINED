class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body
      t.references :question
      t.number :votes
      t.references :user

      t.timestamps
    end
    add_index :answers, :question_id
    add_index :answers, :user_id
  end
end
