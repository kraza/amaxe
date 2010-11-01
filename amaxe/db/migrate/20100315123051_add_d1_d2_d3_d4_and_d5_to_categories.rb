class AddD1D2D3D4AndD5ToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :d1, :string
    add_column :categories, :d2, :string
    add_column :categories, :d3, :string
    add_column :categories, :d4, :string
    add_column :categories, :d5, :string
  end

  def self.down
    remove_column :categories, :d5
    remove_column :categories, :d4
    remove_column :categories, :d3
    remove_column :categories, :d2
    remove_column :categories, :d1
  end
end
