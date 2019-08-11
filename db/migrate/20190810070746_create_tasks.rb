class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.integer :status, null: false, default: 0
      t.datetime :deadline
      t.date :completion_date
      t.text :description
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
