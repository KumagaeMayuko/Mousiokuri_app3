class CreateReadStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :read_statuses do |t|
      t.string :info_id
      t.string :user_id

      t.timestamps
    end
  end
end
