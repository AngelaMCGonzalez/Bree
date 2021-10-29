class AddFieldsToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :last_name, :string
    add_column :patients, :mothers_last_name, :string
    add_column :patients, :phone, :string
    add_column :patients, :birth_date, :date
    add_column :patients, :occupation, :string
    add_column :patients, :objectives, :string, array: true, default: []
  end
end
