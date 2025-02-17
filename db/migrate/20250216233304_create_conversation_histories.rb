class CreateConversationHistories < ActiveRecord::Migration[7.2]
  def change
    create_table :conversation_histories do |t|
      t.references :project, null: false, foreign_key: true
      t.text :comment
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
