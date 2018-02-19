class AddColumnToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :store_type, :integer, null: false, default: 0
  end
end
