class CreatePhysics < ActiveRecord::Migration
  def change
    create_table :physics do |t|
      t.string :condition
      t.integer :insanity
      t.boolean :astrauskiene

      t.timestamps
    end
  end
end
