class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.text :name
      t.text :email
      t.text :phone
      t.datetime :start
      t.datetime :end
      t.text :content
      t.references :host, foreign_key: true

      t.timestamps
    end
  end
end
