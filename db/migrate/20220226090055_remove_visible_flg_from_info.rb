class RemoveVisibleFlgFromInfo < ActiveRecord::Migration[6.1]
  def change
    remove_column :infos, :visible_flg, :boolean
  end
end
