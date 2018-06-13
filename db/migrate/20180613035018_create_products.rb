class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :img_url
      t.integer :price

      t.timestamps
    end
  end
end
