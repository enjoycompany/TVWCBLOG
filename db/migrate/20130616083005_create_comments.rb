class CreateComments < ActiveRecord::Migration
	drop_table :comments
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
