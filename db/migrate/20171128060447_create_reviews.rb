class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :status, null: false, default: 0
      t.string :image_url

      t.timestamps null: false
    end
  end
end
