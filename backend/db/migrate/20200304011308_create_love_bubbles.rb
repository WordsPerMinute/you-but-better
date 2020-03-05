class CreateLoveBubbles < ActiveRecord::Migration[6.0]
  def change
    create_table :love_bubbles do |t|
      # t.references :user, null: false, foreign_key: true
      # t.references :friend, null: false, foreign_key: true
      t.belongs_to :user, null: false
      t.belongs_to :friend, null: false

      t.timestamps
    end
  end
end
