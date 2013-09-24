class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :type
      t.integer :score
      t.references :target, polymorphic: true

      t.timestamps
    end
  end
end
