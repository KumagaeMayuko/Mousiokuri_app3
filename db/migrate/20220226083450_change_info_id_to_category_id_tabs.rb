class ChangeInfoIdToCategoryIdTabs < ActiveRecord::Migration[6.1]
  def change
    change_table :tabs do |t|
      t.rename :info_id, :category_id
    end
  end
end
