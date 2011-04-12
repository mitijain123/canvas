class CreateCanvas < ActiveRecord::Migration
  def self.up
    create_table :canvas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :canvas
  end
end
