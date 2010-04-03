class CreateHeaderFooters < ActiveRecord::Migration
  def self.up
    create_table :header_footers do |t|
      t.string :logo
      t.string :header
      t.string :d1
      t.string :d2
      t.string :d3
      t.string :t1
      t.string :t2
      t.string :t3
      t.string :b1
      t.string :b2
      t.string :b3
      t.string :f

      t.timestamps
    end
  end

  def self.down
    drop_table :header_footers
  end
end
