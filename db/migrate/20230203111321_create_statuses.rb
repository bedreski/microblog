class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.references :replied, foreign_key: { to_table: :statuses }

      t.timestamps
    end
  end
end
