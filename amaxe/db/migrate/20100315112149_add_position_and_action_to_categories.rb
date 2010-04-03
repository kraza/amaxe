class AddPositionAndActionToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :position, :string
    add_column :categories, :action, :string
  end

  def self.down
    remove_column :categories, :action
    remove_column :categories, :position
  end
end
