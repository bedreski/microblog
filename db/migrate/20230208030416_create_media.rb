class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.integer :kind
      t.string :url
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
