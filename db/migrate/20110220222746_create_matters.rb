class CreateMatters < ActiveRecord::Migration
  def self.up
    create_table :matters do |t|
      t.string :name
      t.integer :hours
      t.references :graduation

      t.timestamps
    end
  end

  def self.down
    drop_table :matters
  end
end
