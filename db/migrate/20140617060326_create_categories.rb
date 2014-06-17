class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :Name
      t.boolean :Active_Inactive
      t.string :Description
      t.timestamps
    end
  end
end
