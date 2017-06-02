class AddTitleAndContentColumnToPost < ActiveRecord::Migration
  def change
    add_column :posts, :title, :string
    add_column :posts, :context, :text
  end
end
