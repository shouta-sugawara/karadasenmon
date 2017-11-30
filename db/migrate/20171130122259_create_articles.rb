class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :status, null: false, default: 0

      t.timestamps null: false
    end
  end
end
