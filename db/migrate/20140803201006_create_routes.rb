class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :code_name
      t.references :destination, index: true
      t.references :route_type, index: true
      t.string :time
      t.integer :night

      t.timestamps
    end
  end
end
