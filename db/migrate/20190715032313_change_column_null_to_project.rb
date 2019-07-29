class ChangeColumnNullToProject < ActiveRecord::Migration[5.2]
  def up
    change_column :projects, :name, :string, null: false
    change_column :projects, :status, :integer, null: false
  end

  def down
    change_column :projects, :name, :string, null: true
    change_column :projects, :status, :string, null: true
  end
end
