class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :status
      t.date :release_date

      t.timestamps
    end
  end
end
