class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :title
      t.text :content
      t.integer :status, null: false, default: 0
      t.boolean :has_content, null: false, default: false

      t.timestamps null: false
    end
  end
end
