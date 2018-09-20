class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tunes, :tuning, :fiddle_tuning
  end
end
