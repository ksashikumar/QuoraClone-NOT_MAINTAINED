class CreateTopicQuestions < ActiveRecord::Migration
  def change
    create_table :topic_questions do |t|
      t.references :topic
      t.references :question

      t.timestamps
    end
    add_index :topic_questions, :topic_id
    add_index :topic_questions, :question_id
  end
end
