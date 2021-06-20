class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :cid
      t.integer :contact_number
      t.string :email
      t.text :address
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
