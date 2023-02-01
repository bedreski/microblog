class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :handle
      t.string :display_name
      t.text :bio
      t.datetime :born_at

      t.timestamps
    end
  end
end
