class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :name
      t.text :description
      t.decimal :amount, precision: 16, scale: 2
      t.float :discount

      t.timestamps
    end
  end
end
