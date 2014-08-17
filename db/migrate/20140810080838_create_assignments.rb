class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :route, index: true
      t.references :bus, index: true
      t.integer :night
      t.text :description

      t.timestamps
    end
  end
end
