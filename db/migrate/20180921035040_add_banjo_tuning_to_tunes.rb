class AddBanjoTuningToTunes < ActiveRecord::Migration[5.2]
  def change
    add_column :tunes, :banjo_tuning, :string
  end
end
