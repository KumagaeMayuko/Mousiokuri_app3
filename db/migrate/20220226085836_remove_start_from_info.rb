class RemoveStartFromInfo < ActiveRecord::Migration[6.1]
  def change
    remove_column :infos, :start, :datetime
  end
end
