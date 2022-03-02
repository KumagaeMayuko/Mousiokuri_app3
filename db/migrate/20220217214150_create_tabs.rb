class CreateTabs < ActiveRecord::Migration[6.1]
  def change
    create_table :tabs do |t|
      t.integer :priority
      t.integer :info_id

      t.timestamps
    end
  end
end
