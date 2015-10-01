class CreateFosts < ActiveRecord::Migration
  def change
    create_table :fosts do |t|
      t.string :name
      t.string :category
      t.string :city
      t.string :region
      t.string :plong
      t.string :plalt
      t.text :description
      t.string :shdes

      t.timestamps null: false
    end
  end
end
