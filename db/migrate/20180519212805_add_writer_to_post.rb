class AddWriterToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :writer, :text
  end
end
