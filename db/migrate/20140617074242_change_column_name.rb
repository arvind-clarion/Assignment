class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :categories, :Name, :name
    rename_column :categories, :Active_Inactive, :status
    rename_column :categories, :Description, :description
  end
end
