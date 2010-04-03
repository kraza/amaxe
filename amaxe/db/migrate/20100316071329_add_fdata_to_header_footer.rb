class AddFdataToHeaderFooter < ActiveRecord::Migration
  def self.up
    add_column :header_footers, :fdata, :binary
  end

  def self.down
    remove_column :header_footers, :fdata
  end
end
