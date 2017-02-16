class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :title
      t.text :body
      t.boolean :active
      t.integer :note_id

      t.timestamps null: false
    end
  end
end
