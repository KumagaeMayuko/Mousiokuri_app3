class RemoveEndFromInfo < ActiveRecord::Migration[6.1]
  def change
    remove_column :infos, :end, :datetime
  end
end
