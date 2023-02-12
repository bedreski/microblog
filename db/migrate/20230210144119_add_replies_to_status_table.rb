class AddRepliesToStatusTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :statuses, :status, column: :replied_id
  end
end
