class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :specific_goal
      t.string :why
      t.integer :months
      t.boolean :attainable
      t.string :current_action
      t.boolean :private
      t.references :goal_category
      t.references :user
      t.timestamps
    end
  end
end
