class ChangeDataContentToComment < ActiveRecord::Migration[7.0]
  def change
    change_column :comments, :content, :text
  end
end
