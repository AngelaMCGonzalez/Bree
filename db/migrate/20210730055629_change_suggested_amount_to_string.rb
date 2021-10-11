class ChangeSuggestedAmountToString < ActiveRecord::Migration[6.1]
  def change
    change_column :aliments, :suggested_amount, :string, null: true, default: ''
  end
end
