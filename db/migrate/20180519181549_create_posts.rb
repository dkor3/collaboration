class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :start
      t.date :end
      t.text :content
      t.boolean :freez
      t.string :location
      t.string :lat
      t.string :lng
      t.string :subway
      t.timestamps
    end
  end
end
