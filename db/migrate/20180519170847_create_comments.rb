class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :writer
      t.text :content
      t.references :host, foreign_key: true

      t.timestamps
    end
  end
end
