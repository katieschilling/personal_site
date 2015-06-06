class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :title
      t.string :company
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :milestones, array: true

      t.timestamps null: false
    end
  end
end
