class AddActionToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :action, :string
  end

  def self.down
    remove_column :products, :action
  end
end
