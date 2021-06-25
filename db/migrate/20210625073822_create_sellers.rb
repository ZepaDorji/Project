class CreateSellers < ActiveRecord::Migration[6.1]
  def change
    create_table :sellers do |t|
      t.string :fullname
      t.string :DoB
      t.integer :Cid
      t.integer :contact_no
      t.string :email
      t.text :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
