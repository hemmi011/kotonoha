class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.datetime :start_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
