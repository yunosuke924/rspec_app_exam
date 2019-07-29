class ChangeColumnDefaultToProject < ActiveRecord::Migration[5.2]
  def up
    change_column_default :projects, :status, 0
  end

  def down
    change_column_default :projects, :status, nil
  end
end
