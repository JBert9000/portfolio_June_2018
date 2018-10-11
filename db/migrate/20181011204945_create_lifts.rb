class CreateLifts < ActiveRecord::Migration[5.2]
  def change
    create_table :lifts do |t|
      t.date :date
      t.string :liftName
      t.boolean :ismetric
      t.integer :weightlifted
      t.integer :repsPerformed
      t.integer :onerm

      t.timestamps
    end
  end
end
