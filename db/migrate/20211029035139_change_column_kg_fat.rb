class ChangeColumnKgFat < ActiveRecord::Migration[6.1]
  def change
    rename_column :body_compositions, :kg_fat, :kilograms_fat
  end
end
