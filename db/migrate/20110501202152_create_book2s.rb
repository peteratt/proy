class CreateBook2s < ActiveRecord::Migration
  def self.up
    create_table :book2s do |t|
      t.string :title
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :book2s
  end
end
