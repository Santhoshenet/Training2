class CreateTrainees < ActiveRecord::Migration
  def self.up
    create_table :trainees do |t|
      t.string :name
      t.text :address
      t.integer :age
      t.boolean :sex
      t.date :dob

      t.timestamps
    end
  end

  def self.down
    drop_table :trainees
  end
end
