class CreateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :infos do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.integer :user_id
      t.datetime :start
      t.datetime :end
      t.boolean :visible_flg

      t.timestamps
    end
  end
end
