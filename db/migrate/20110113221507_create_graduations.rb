class CreateGraduations < ActiveRecord::Migration
  def self.up
    create_table :graduations do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :graduations
  end
end
