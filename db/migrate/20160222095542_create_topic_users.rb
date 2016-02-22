class CreateTopicUsers < ActiveRecord::Migration
  def change
    create_table :topic_users do |t|
      t.references :topic
      t.references :user

      t.timestamps
    end
    add_index :topic_users, :topic_id
    add_index :topic_users, :user_id
  end
end
