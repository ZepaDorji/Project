class CreateUserprofiles < ActiveRecord::Migration[6.1]
  def change
    create_table :userprofiles do |t|
      t.string :name
      t.string :dob
      t.integer :cid_no
      t.string :email
      t.integer :contact_no
      t.text :address
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
