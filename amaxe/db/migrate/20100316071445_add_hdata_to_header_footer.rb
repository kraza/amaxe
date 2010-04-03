class AddHdataToHeaderFooter < ActiveRecord::Migration
  def self.up
    add_column :header_footers, :hdata, :binary
    add_column :header_footers, :td1, :binary
    add_column :header_footers, :td2, :binary
    add_column :header_footers, :td3, :binary
    add_column :header_footers, :bd1, :binary
    add_column :header_footers, :bd2, :binary
    add_column :header_footers, :bd3, :binary
  end

  def self.down
    remove_column :header_footers, :hdata
    remove_column :header_footers, :td1
    remove_column :header_footers, :td2
    remove_column :header_footers, :td3
    remove_column :header_footers, :bd1
    remove_column :header_footers, :bd2
    remove_column :header_footers, :bd3
  end
end

