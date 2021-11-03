class ChangeColumFile < ActiveRecord::Migration[6.1]
  def change
    rename_column :laboratories, :file, :file_name
  end
end
