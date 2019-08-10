class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :status
      t.datetime :deadline
      t.date :completion_date
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
